/* 
 * File: main.c 
 * Author: Destruhaut Romain
 * Comments: JUNIA AP4 2024-2025
 * Revision history: 
    * 2025/02/10 : File created
 */

/* Résultat : La LED est allumée à 10% au début, et quand on appuie sur S1, elle passe à 100% grâce au PWM */

#include "configbits.h"
#include <xc.h>      

#define _XTAL_FREQ 8000000

// Fonction qui initialise le Timer 2
void init_timer2(void) {
    T2CON=0x06; // Configuration de base
    // Le Timer 2 sert à générer un délai (pour le PWM)
    T2CONbits.T2CKPS = 0;  // Prescaler
    T2CONbits.T2OUTPS = 7;   // Postcaler
    PR2 = 199;  // Valeur de PR2
    TMR2 = 0;   // Remise à zéro du compteur
    T2CONbits.TMR2ON = 1;  // On démarre le Timer 2
    PIR1bits.TMR2IF = 0;  // On reset le flag d'interruption
    PIE1bits.TMR2IE = 1;  // On active l'interruption (mais on l'utilise pas ?)
}

void main(void) {
    // Configuration des ports
    TRISD = 0x00; // Port D en sortie (pour la LED)
    LATD = 0x00;  // On met tout à 0 au début
    
    TRISBbits.TRISB0 = 1;   // RB0 en entrée (c'est le bouton S1)
    ANSELBbits.ANSB0 = 0;   // On met RB0 en digital
    
    // Configuration du PWM
    PWM4EN=0x1;    // Active le PWM
    PWM4DCL=0x00;  // PWM duty cycle bas mis à 0
    RD0PPS=0b01111; // On assigne la sortie PWM au pin RD0
    

    // Initialisation du Timer 2
    init_timer2();
    
    while (1) {
         // Vérification si le bouton est appuyé (active low = appui -> 0)
        if (PORTBbits.RB0 == 0) {  
            PWM4DCH=0xC7; // Met la LED à 100%
        } else {
            PWM4DCH=0x14; // Met la LED à 10%
        }         
    }
}
