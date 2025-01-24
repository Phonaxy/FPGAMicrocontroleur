/* 
 * File: main.c 
 * Author: Destruhaut Romain
 * Comments: JUNIA AP4 2024-2025
 * Revision history: 
    * 2025/01/24 : File created
 */

/*Resultat : Nous avons bien une alternance des leds qui s'allument de D1 a D8 */
/*avec Timer2*/

#include "configbits.h"
#include <xc.h>      

#define _XTAL_FREQ 4000000  // d�finir la fr�quence � 4 MHz


// configuration du Timer 2
void init_timer2(void) {
    // TMR2 est utilis� pour g�n�rer des d�lais.
    // configuration : prescaler = 16, PR2 = valeur calcul�e
    T2CONbits.T2CKPS = 0b11;  // Prescaler = 16 (T2CKPS = 11)
    PR2 = 249;                // PR2 = 249 pour g�n�rer un d�lai de 125ms avec prescaler 16
    TMR2 = 0;                 // r�initialiser le compteur TMR2
    T2CONbits.TMR2ON = 1;     // d�marrer Timer 2
    PIR1bits.TMR2IF = 0;      // r�initialiser le flag d'interruption de Timer 2
    PIE1bits.TMR2IE = 1;      // activer l'interruption de Timer 2
}

// fonction d'interruption de Timer 2
void __interrupt() timer2_isr(void) {
    if (PIR1bits.TMR2IF) {  // si l'interruption provient de TMR2
        PIR1bits.TMR2IF = 0;  // r�initialiser le flag d'interruption de Timer 2
    }
}

// fonction pour allumer les LEDs en chenillard
void chenillard(void) {
    LATD = 0x01; // D1 allum�e
    __delay_ms(175); // attendre 175 ms
    
    LATD = 0x02; // D2 allum�e
    __delay_ms(175); 
    
    LATD = 0x04; // D3 allum�e
    __delay_ms(175); 
    
    LATD = 0x08; // D4 allum�e
    __delay_ms(175); 

    LATD = 0x00; // remise � 0 pour D1 a D4
    
    LATB = 0x01; // D5 allum�e
    __delay_ms(175); 
    
    LATB = 0x02; // D6 allum�e
    __delay_ms(175);
    
    LATB = 0x04; // D7 allum�e
    __delay_ms(175);
    
    LATB = 0x08; // D8 allum�e
    __delay_ms(175);

    LATB = 0x00; // remise � 0 pour D5 a D8
}

void main(void) {
    // initialisation des ports
    TRISD = 0x00; // configure le port D comme sortie
    TRISB = 0x00; // configure le port B comme sortie
    LATD = 0x00;  // initialise le registre LATD
    LATB = 0x00;  // initialise le registre LATB

    // initialisation du Timer 2
    init_timer2();

    while (1) {
        chenillard();  // ex�cute le chenillard
    }
}
