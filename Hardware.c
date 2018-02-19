/* ************************************************************** *
 * UTFPR - Universidade Tecnologica Federal do Paraná
 * Engenharia Eletrônica
 * Trabalho de Conclusão de Curso
 * ************************************************************** *
 * Sistema de Segurança baseado em Reconhecimento de Senha Falada
 * ************************************************************** *
 * Equipe:
 * Luiz Felipe Kim Evaristo
 * Tauan Marinho
 * Tiago Henrique Faxina
 * Tiago Mariani Palte
 * ************************************************************** *
 * Controlador Geral do Hardware
 * v1.0
 * 2017
 * ************************************************************** */

#include "driverlib/Hardware.h"
#include "string.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include"driverlib/pin_map.h"
#include "driverlib/rom_map.h"
#include "driverlib/interrupt.h"
#include "driverlib/timer.h"
#include "driverlib/uart.h"
#include "utils/uartstdio.h"
#include "inc/hw_ssi.h"
#include "driverlib/ssi.h"
#include "driverlib/spi.h"
#include "driverlib/rfid.h"
#include "driverlib/lcd.h"
#include "driverlib/buzzer.h"
#include "driverlib/MyString.h"
#include "driverlib/trava_eletrica.h"
#include "driverlib/keyboard.h"

unsigned char RFIDCardPassWord[5];
unsigned char LastRFIDCardPassWord[5];
unsigned char RFIDCardPassWord1[] = {3, 67, 147, 229, 54};
unsigned char RFIDCardPassWord2[] = {117, 224, 6, 136, 27};
unsigned char RFIDCardPassWord3[] = {201, 66, 106, 123, 54};
unsigned char RFIDCardPassWord4[] = {3, 67, 147, 229, 54}; //Não autorizado
unsigned char PassWord[] = {0,0,0,0,0,'\0'};
unsigned char PassWord1[] = {1,1,1,1,1,'\0'};
uint8_t PassWordCount = 0;
uint8_t NumTentativas = 0;
CardStatus cardStatus = CardNotDetected;
UserStatus userStatus = EntryNotAllowed;
UserOptionsStatus userOptionsStatus = none;
static volatile bool g_bIntFlag = true;
static volatile bool TestFlag = false;
static volatile bool ExternIntFlag = false;
static volatile bool CardVerifFlag = false;

void HardwareInit()
{

    ulDelayms = (40000);
    uint32_t initialData = 0;

    InitConsole();

    MAP_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_2, 0x00);
    MAP_GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_2, 0x04);
    MAP_GPIOPinWrite(GPIO_PORTG_BASE, GPIO_PIN_0, 1);
    MAP_GPIOPinWrite(GPIO_PORTN_BASE, GPIO_PIN_1|GPIO_PIN_0, 2);
    MAP_SysCtlDelay(50*ulDelayms);

    LCDInit();
    MFRC522Init();
    DesacionarTrava();
    BuzzerDeactivate();
    g_bIntFlag = true;
    cardStatus = CardNotDetected;
}

void LCDIntHandler(void)
{
  MAP_TimerIntClear(TIMER3_BASE, TIMER_TIMA_TIMEOUT);

  //MAP_GPIOPinWrite(GPIO_PORTN_BASE, GPIO_PIN_0, 0);
  //
  // Set a flag to indicate that the interrupt occurred.
  //
  //MAP_SysCtlDelay(1000*ulDelayms);
  //MAP_GPIOPinWrite(GPIO_PORTN_BASE, GPIO_PIN_0, 1);
  LCDClear();
  LCDInicio();
  DesacionarTrava();
  MAP_GPIOPinWrite(GPIO_PORTN_BASE, GPIO_PIN_1|GPIO_PIN_0, 2);
  MAP_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_2, 0x00);
  //cardStatus = CardNotDetected;
  //userStatus = EntryNotAllowed;
  g_bIntFlag = true;
  cardStatus = CardNotDetected;
  //MAP_TimerEnable(TIMER3_BASE, TIMER_A);
}

void BuzzerIntHandler(void)
{
  MAP_TimerIntClear(TIMER4_BASE, TIMER_TIMA_TIMEOUT);
  BuzzerDeactivate();

}
uint8_t teste = 0x04;
void KeyBoardIntHandler(void)
{
    //if (MAP_GPIOIntStatus(GPIO_PORTL_BASE, false) & (GPIO_PIN_3|GPIO_PIN_2|GPIO_PIN_1|GPIO_PIN_0)) {
        MAP_GPIOIntClear(GPIO_PORTL_BASE, GPIO_PIN_0);

        teste = ~teste;
        MAP_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_2, teste);
        if(ExternIntFlag == false)
        {
            PassWordCount = 0;
            LCDKeyPassword();
        }
        ExternIntFlag = true;
        LCDWriteData('*');
        MAP_SysCtlDelay(500*ulDelayms);

        PassWord[PassWordCount] = KeyboardGetKey();

    //MAP_IntEnable(INT_GPIOJ);
        PassWordCount++;
   // }
}

void HardwareLoop()
{
    unsigned char status;
    unsigned char str[MAX_LEN];

    if (MFRC522IsCard() && cardStatus == CardNotDetected)
    {
        cardStatus = CardDetected;
        status = MFRC522Anticoll(str);
        memcpy(RFIDCardPassWord, str, 5);
        if (status == MI_OK)
        {
                /*UARTprintf("Card Detected\n");
                    UARTprintf("\n The card's number is  : ");
                    UARTprintf("%d", RFIDCardPassWord[0]);
                    UARTprintf(" , ");
                    UARTprintf("%d", RFIDCardPassWord[1]);
                    UARTprintf(" , ");
                    UARTprintf("%d", RFIDCardPassWord[2]);
                    UARTprintf(" , ");
                    UARTprintf("%d", RFIDCardPassWord[3]);
                    UARTprintf(" , ");
                    UARTprintf("%d", RFIDCardPassWord[4]);
                    UARTprintf(" ");
                    MAP_SysCtlDelay(1000*ulDelayms);*/
            buscaCadastro();
        }
        VerificaTentativas();
        HardwarePassWordControl();
        HardwareControl();
    }
    MFRC522Halt();
}

void VerificaTentativas()
{
    if(!StrCompare(LastRFIDCardPassWord, RFIDCardPassWord, 5))
    {
        memcpy(LastRFIDCardPassWord,RFIDCardPassWord, 5);
        NumTentativas = 0;
        userStatus = EntryNotAllowed;
    }
    else
    {
        NumTentativas++;
    }

    if(NumTentativas > 3)
    {
        userStatus = UserBlocked;
        userOptionsStatus = none;
    }

}
uint8_t keyPass = 0x00;
void HardwarePassWordControl()
{
    if(userOptionsStatus == KeyPassWord && userStatus != UserBlocked)
    {
        PassWordCount = 0;
        LCDClear();
        LCDKeyPassword();

        while(PassWordCount < 5)
        {
            keyPass = KeyboardGetKey();
            if(keyPass != 0xFF)
            {
                PassWord[PassWordCount] = (unsigned char)keyPass;
                PassWordCount++;
                LCDWriteData('*');
                UARTprintf(" %d ", keyPass);
                MAP_SysCtlDelay(500*ulDelayms);
            }
        }
        PasswordValidate();
        keyPass = 0x00;
        CardVerifFlag = true;
        userOptionsStatus = none;
    }
    else if(userOptionsStatus == VoicePassWord && userStatus != UserBlocked)
    {
        uint8_t t = 0;
        LCDRecordingSound();
        CardVerifFlag = true;
        userOptionsStatus = none;
        userStatus = EntryAllowed;
        LCDMoveCursorToXY(3,14);
        //LCDWriteData(t+48);
        LCDWriteData('|');
        LCDMoveCursorToXY(3,5);
        LCDWriteData('|');
        while(t < 8)
        {
            MAP_SysCtlDelay(250*ulDelayms);
            LCDWriteData(176);
            t++;
        }

        MAP_SysCtlDelay(1000*ulDelayms);
    }
    else if(userOptionsStatus == none)
    {
        CardVerifFlag = true;
        //userOptionsStatus = none;
    }
}

void HardwareControl()
{
    if(userStatus == EntryAllowed && CardVerifFlag == true && g_bIntFlag == true)
    {
        LCDAllowed();
        AcionarTrava();
        BuzzerActivate();
        MAP_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_2, 0x04);
        MAP_TimerLoadSet(TIMER4_BASE, TIMER_A, 0.5 * ui32SysClock);
        MAP_TimerEnable(TIMER4_BASE, TIMER_A);
        MAP_TimerEnable(TIMER3_BASE, TIMER_A);
        CardVerifFlag = false;
        g_bIntFlag = false;
        userStatus = EntryNotAllowed;
    }
    else if(userStatus == EntryNotAllowed && CardVerifFlag == true && g_bIntFlag == true)
    {
        g_bIntFlag = false;
        LCDNotAllowed();
        BuzzerActivate();
        MAP_TimerLoadSet(TIMER4_BASE, TIMER_A, 1 * ui32SysClock);
        MAP_TimerEnable(TIMER4_BASE, TIMER_A);
        MAP_TimerEnable(TIMER3_BASE, TIMER_A);
        CardVerifFlag = false;
        //userStatus = EntryNotAllowed;
    }
    else if(userStatus == UserNotRegistered && CardVerifFlag == true && g_bIntFlag == true)
    {
        g_bIntFlag = false;
        LCDNotRegister();
        BuzzerActivate();
        MAP_TimerLoadSet(TIMER4_BASE, TIMER_A, 1 * ui32SysClock);
        MAP_TimerEnable(TIMER4_BASE, TIMER_A);
        MAP_TimerEnable(TIMER3_BASE, TIMER_A);
        CardVerifFlag = false;
        //userStatus = UserNotRegistered;
    }
    else if(userStatus == UserBlocked && CardVerifFlag == true && g_bIntFlag == true)
    {
        g_bIntFlag = false;
        LCDUserBlocked();
        BuzzerActivate();
        MAP_TimerLoadSet(TIMER4_BASE, TIMER_A, 1 * ui32SysClock);
        MAP_TimerEnable(TIMER4_BASE, TIMER_A);
        MAP_TimerEnable(TIMER3_BASE, TIMER_A);
        CardVerifFlag = false;
    }
    else if(CardVerifFlag == true && g_bIntFlag == true)
    {
        CardVerifFlag = false;
        //userStatus = EntryNotAllowed;
    }
    //cardStatus = CardNotDetected;
}

void buscaCadastro()
{
    if(StrCompare(RFIDCardPassWord,RFIDCardPassWord1, 5))
    {
        userOptionsStatus = VoicePassWord;
    }
    else if(StrCompare(RFIDCardPassWord,RFIDCardPassWord2, 5))
    {
        userOptionsStatus = KeyPassWord;
    }
    else if(StrCompare(RFIDCardPassWord,RFIDCardPassWord4, 5))
    {
        userOptionsStatus = none;
        userStatus = EntryNotAllowed;
    }
    else
    {
        userOptionsStatus = none;
        userStatus = UserNotRegistered;
    }
}

void PasswordValidate()
{
    if(StrCompare(PassWord,PassWord1, 5))
    {
        userStatus = EntryAllowed;
    }
    else
    {
        userStatus = EntryNotAllowed;
    }
}

void InitConsole()
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);

    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);

    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);

    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);

    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);

    UARTStdioConfig(0, 115200, 16000000);
}
