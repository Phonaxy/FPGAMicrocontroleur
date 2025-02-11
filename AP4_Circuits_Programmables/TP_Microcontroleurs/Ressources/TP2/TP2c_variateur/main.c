/* 
 * File: main.c 
 * Author: Destruhaut Romain
 * Comments: JUNIA AP4 2024-2025
 * Revision history: 
    * 2025/02/11 : File created
 */

/*Resultat : Nous pouvons controler l'intensite de la led avec le potentiometre */


#include "configbits.h"
#include <xc.h>

#define _XTAL_FREQ 8000000

void init_timer2(void) {
    T2CON = 0x06; 
    T2CONbits.T2CKPS = 0;  
    T2CONbits.T2OUTPS = 7; 
    PR2 = 199; 
    TMR2 = 0; 
    T2CONbits.TMR2ON = 1;  
    PIR1bits.TMR2IF = 0; 
    PIE1bits.TMR2IE = 1;
}

void initADC(void)
{
    ADCON0 = 0;
    ADCON1 = 0;

    //Canal = AN0
    ADCON0bits.CHS = 0;

    //Justification à droite, Vref=VDD, clock=Fosc/64
    ADCON1bits.ADFM   = 1; 
    ADCON1bits.ADPREF = 0; 
    ADCON1bits.ADNREF = 0; 
    ADCON1bits.ADCS   = 0b110; 

    //Activation ADC
    ADCON0bits.ADON   = 1;
}

int readADC(void)
{
    ADCON0bits.GO = 1;       
    while(ADCON0bits.GO == 1);
    return ((ADRESH << 8) | ADRESL);
    //On assemble ADRESH (8 bits) et ADRESL (8 bits) en une valeur
}

void main(void)
{
    //RA0 = AN0 (potentiomètre)
    TRISAbits.TRISA0 = 1;
    ANSELAbits.ANSA0 = 1;

    //RD0 = sortie PWM4
    TRISDbits.TRISD0 = 0;
    LATDbits.LATD0   = 0;
    // On assigne la fonction PWM4OUT à RD0
    RD0PPS = 0b01111; 

    //Init Timer2 + ADC
    init_timer2();
    initADC();

    //Configuration du PWM4
    // - bit7=1 => PWM4EN=1
    // - on garde POL=0 => polarité normale
    // - on initialisera le duty cycle via PWM4DCH et PWM4DCL
    PWM4EN = 0x1;
    //On part de 0 (éteint)
    PWM4DCH = 0;
    PWM4DCL = 0;

    while (1)
    {
        //Lecture de l'ADC => 0..1023
        int valADC = readADC();

        //On veut un duty10 entre 0 et 800 (4*(PR2+1)=4*200=800)
        //    => 0 => 0%, 800 => 100%
        //    => duty10 = valADC * 800 / 1023
        long duty10 = ( (long)valADC * 800L ) / 1023;

        //    - bits [9..2] => PWM4DCH (8 bit)
        //    - bits [1..0] => PWM4DCL<7:6> (Bit de poid fort) (2 bit)
        PWM4DCH = (duty10 >> 2) & 0xFF;       // Les 8 bits hauts
        PWM4DCL = (duty10 & 0x03) << 6;       // Les 2 bits bas, dans <7:6>

        __delay_ms(5);
    }
}
