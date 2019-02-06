#include <stdint.h>
#include <usb.h>
#include <usb_host_android.h>
#include <leds.h>
#include <adc.h>
#include <buttons.h>
#include <system.h>
#include <app_android_basic_io.h>

//Definitions of the various application commnands that can be sent
typedef enum _ACCESSORY_DEMO_COMMANDS
{
    COMMAND_SET_LEDS            = 0x01,
    COMMAND_UPDATE_PUSHBUTTONS  = 0x02,
    COMMAND_UPDATE_POT          = 0x03,
    COMMAND_APP_CONNECT         = 0xFE,
    COMMAND_APP_DISCONNECT      = 0xFF
} ACCESSORY_DEMO_COMMANDS;

//Creation of the data packet that is going to be sent.  In this example
//  there is just a command code and a one byte data.
typedef struct __attribute__((packed))
{
    uint8_t command;
    uint8_t data;
} ACCESSORY_APP_PACKET;


//local variables
static uint8_t read_buffer[64];
static ACCESSORY_APP_PACKET outgoing_packet;
static void* device_handle = NULL;
static bool device_attached = false;

//Only for this App
static int countdown = 0;
/*
static char manufacturer[] = "Microchip Technology Inc.";
static char model[] = "Basic Accessory Demo";
static char description[] = DEMO_BOARD_NAME_STRING;
static char version[] = "2.0";
static char uri[] = "https://play.google.com/store/apps/details?id=com.microchip.android.BasicAccessoryDemo_API12&hl=en";
static char serial[] = "N/A";
 * */
static char manufacturer[] = "StudioThree";
static char model[] = "Rower";
static char description[] = DEMO_BOARD_NAME_STRING;
static char version[] = "2.0";
static char uri[] = "https://play.google.com/store/apps/details?id=com.microchip.android.BasicAccessoryDemo_API12&hl=en";
static char serial[] = "N/A";

ANDROID_ACCESSORY_INFORMATION myDeviceInfo =
{
    manufacturer,
    sizeof(manufacturer),
    model,
    sizeof(model),
    description,
    sizeof(description),
    version,
    sizeof(version),
    uri,
    sizeof(uri),
    serial,
    sizeof(serial)
};

static uint32_t transferSize = 0;
static bool responseNeeded;
static uint8_t pushButtonValues = 0xFF;
static uint8_t potPercentage = 0xFF;
static bool buttonsNeedUpdate = false;
static bool potNeedsUpdate = false;
static bool readyToRead = true;
static bool writeInProgress = false;
static uint8_t tempValue = 0xFF;
static uint8_t errorCode;
static uint32_t index;
static ACCESSORY_APP_PACKET* command_packet = NULL;

static bool connected_to_app = false;
static bool need_to_disconnect_from_app = false;

void APP_Tasks(struct WriteState *y);

void APP_AndroidBasicIOInitialize(void)
{
    transferSize = 0;
    pushButtonValues = 0xFF;
    potPercentage = 0xFF;
    buttonsNeedUpdate = false;
    potNeedsUpdate = false;
    readyToRead = true;
    writeInProgress = false;
    tempValue = 0xFF;
    command_packet = NULL;

    connected_to_app = false;
    need_to_disconnect_from_app = false;

    AndroidAppStart(&myDeviceInfo);
    
    responseNeeded = false;

    device_attached = false;
}
static int indexNumber =0;
void APP_AndroidBasicIOTasks(struct WriteState *x)
{
    //If the device isn't attached yet,
    if(device_attached == false)
    {
        buttonsNeedUpdate = true;
        potNeedsUpdate = true;
        need_to_disconnect_from_app = false;
        connected_to_app = false;
        transferSize = 0;

        //Reset the accessory state variables
        LED_Enable(ANDROID_DEMO_LED_0);
        LED_Enable(ANDROID_DEMO_LED_1);
        LED_Enable(ANDROID_DEMO_LED_2);
        LED_Enable(ANDROID_DEMO_LED_3);
        LED_Enable(ANDROID_DEMO_LED_4);
        LED_Enable(ANDROID_DEMO_LED_5);
        LED_Enable(ANDROID_DEMO_LED_6);
        LED_Enable(ANDROID_DEMO_LED_7);

        //Nothing left to do if there isn't a device to attach, return.
        return;
    }
    
    
    APP_Tasks(x);

    //If the accessory is ready, then this is where we run all of the demo code

    if(readyToRead == true)
    {
        errorCode = AndroidAppRead(device_handle, (uint8_t*)&read_buffer, (uint32_t)sizeof(read_buffer));
        //If the device is attached, then lets wait for a command from the application
        if( errorCode != USB_SUCCESS)
        {
            //Error
        }
        else
        {
            readyToRead = false;
        }
    }

    transferSize = 0;

    if(AndroidAppIsReadComplete(device_handle, &errorCode, &transferSize) == true)
    {
        //We've received a command over the USB from the Android device.
        if(errorCode == USB_SUCCESS)
        {
            //Maybe process the data here.  Maybe process it somewhere else.
            command_packet = (ACCESSORY_APP_PACKET*)&read_buffer[0];
        }
        else
        {
            //Error
        }

    }

    while(transferSize > 0)
    {
        if(connected_to_app == false)
        {
            if(command_packet->command == COMMAND_APP_CONNECT)
            {
                connected_to_app = true;
                need_to_disconnect_from_app = false;
            }
        }
        else
        {
            switch(command_packet->command)
            {
                case COMMAND_SET_LEDS:
                    
                    break;

                case COMMAND_APP_DISCONNECT:
                    need_to_disconnect_from_app = true;
                    break;

                default:
                    //Error, unknown command
                    break;
            }
        }
        //All commands in this example are two bytes, so remove that from the queue
        transferSize -= 2;
        
        //And move the pointer to the next packet (this works because
        //  all command packets are 2 bytes.  If variable packet transferSize
        //  then need to handle moving the pointer by the transferSize of the
        //  command type that arrived.
        command_packet++;

        if(need_to_disconnect_from_app == true)
        {
            break;
        }
    }

    if(transferSize == 0)
    {
        readyToRead = true;
    }

    //Get the current pushbutton settings
    //TODO tempValue = GetPushbuttons();

    //If the current button settings are different than the last time
    //  we read the button values, then we need to send an update to the
    //  attached Android device
    if(tempValue != pushButtonValues)
    {
        buttonsNeedUpdate = true;
        pushButtonValues = tempValue;
    }

    //Get the current potentiometer setting
    tempValue = ADC_ReadPercentage(ADC_CHANNEL_POTENTIOMETER);

    //If it is different than the last time we read the pot, then we need
    //  to send it to the Android device
    if(tempValue != potPercentage)
    {
        potNeedsUpdate = true;
        potPercentage = tempValue;
    }

    //If there is a write already in progress, we need to check its status
    if( writeInProgress == true )
    {
        if(AndroidAppIsWriteComplete(device_handle, &errorCode, &transferSize) == true)
        {
            writeInProgress = false;
            if(need_to_disconnect_from_app == true)
            {
                connected_to_app = false;
                need_to_disconnect_from_app = false;
            }

            if(errorCode != USB_SUCCESS)
            {
                //Error
            }
        }
    }

    if((need_to_disconnect_from_app == true) && (writeInProgress == false))
    {
        outgoing_packet.command = COMMAND_APP_DISCONNECT;
        outgoing_packet.data = 0;
        writeInProgress = true;

        errorCode = AndroidAppWrite(device_handle,(uint8_t*)&outgoing_packet, 2);
        if( errorCode != USB_SUCCESS )
        {
        }
    }

    if(connected_to_app == false)
    {
        //If the app hasn't told us to start sending data, let's not do anything else.
        return;
    }

    //If we need up update the button status on the Android device and we aren't
    //  already busy in a write, then we can send the new button data.
    if((buttonsNeedUpdate == true) && (writeInProgress == false))
    {
        outgoing_packet.command = COMMAND_UPDATE_PUSHBUTTONS;
        outgoing_packet.data = pushButtonValues;

        errorCode = AndroidAppWrite(device_handle,(uint8_t*)&outgoing_packet, 2);
        if( errorCode != USB_SUCCESS )
        {
        }

        buttonsNeedUpdate = false;
        writeInProgress = true;
    }

    //If we need up update the pot status on the Android device and we aren't
    //  already busy in a write, then we can send the new pot data.
    if((potNeedsUpdate == true) && (writeInProgress == false))
    {
        outgoing_packet.command = COMMAND_UPDATE_POT;
        outgoing_packet.data = potPercentage;

        errorCode = AndroidAppWrite(device_handle,(uint8_t*)&outgoing_packet, 2);
        if( errorCode != USB_SUCCESS )
        {
        }

        potNeedsUpdate = false;
        writeInProgress = true;
    }
}


/****************************************************************************
  Function:
    void SetLEDs(uint8_t setting)

  Summary:
    change the LED settings of the boards

  Description:
    change the LED settings of the boards

  Precondition:
    None

  Parameters:
    uint8_t setting - bitmap for desired LED setting (1 = On, 0 = Off)
        bit 0 = LED 0
        bit 1 = LED 1
        bit 2 = LED 2
        ...
        bit 7 = LED 7

  Return Values:
    None

  Remarks:
    None

/****************************************************************************
  Function:
    uint8_t GetPushbuttons(void)

  Summary:
    Reads the current push button status.

  Description:
    Reads the current push button status.

  Precondition:
    None

  Parameters:
    None

  Return Values:
    uint8_t - bitmap for button representations (1 = pressed, 0 = not pressed)
        bit 0 = button 1
        bit 1 = button 2
        bit 2 = button 3
        bit 3 = button 4

  Remarks:
    None
  ***************************************************************************/

/*
 My App
 */

static uint8_t errorCode;
void APP_Tasks(struct WriteState *wdata)
{
    
    if( wdata->isWrite  >0)
    {
        outgoing_packet.command = COMMAND_UPDATE_PUSHBUTTONS;
        outgoing_packet.data = pushButtonValues;    
        //errorCode = AndroidAppWrite(device_handle,(uint8_t*)&outgoing_packet, 2);
        //errorCode = AndroidAppWrite(device_handle, (uint8_t*)&(wdata->Data) , 1);
        uint8_t* senddata = &(wdata->Data);
        errorCode = AndroidAppWrite(device_handle, senddata , 1);
        writeInProgress = true;
        if(errorCode== USB_SUCCESS)
        {            
            wdata->isWrite =0;
        }
    }
}
//****************************************************************************/
void APP_AndroidBasicIOAttach(void* handle)
{
    device_attached = true;
    device_handle = handle;
}

void APP_AndroidBasicIODetach(void* handle)
{
    device_attached = false;
}