#include <xc.h>
#include "configbits.h"

#define _XTAL_FREQ 8000000

// Variables globales (de 0 à 60)
unsigned char step = 0;       // Valeur qui va changer pour faire varier la luminosité
unsigned char ascending = 1;  // 1 => on augmente la luminosité, 0 => on la diminue

void initTimer2_PWM4(void)
{
    PR2 = 199;  // Valeur du Timer2 pour régler la fréquence du PWM
    T2CON = 0;  // On met tout à 0 pour commencer proprement
    
    T2CONbits.T2CKPS  = 3; // Prescaler 1:16 => Timer2 avance plus lentement
    T2CONbits.T2OUTPS = 4; // Postscaler 1:5 => PWM plus stable
    T2CONbits.TMR2ON  = 1; // On démarre le Timer2

    // Reset du flag d'interruption de Timer2 et activation de l'interruption
    PIR1bits.TMR2IF = 0;  
    PIE1bits.TMR2IE = 1;  

    // Configuration de la broche RD0 pour qu’elle serve à la PWM4
    TRISDbits.TRISD0 = 0; // RD0 en sortie
    LATDbits.LATD0   = 0; // On met RD0 à 0 au début
    RD0PPS = 0x0F;  // On dit que RD0 doit sortir la PWM4

    // Activation de la PWM4 avec polarité standard
    PWM4CON = 0x80; // bit7=1 (PWM activée), bit6=0 (polarité normale)

    // Duty cycle initial = 0% (LED éteinte)
    PWM4DCH = 0;
    PWM4DCL = 0;
}

void __interrupt() myISR(void)
{
    // Vérifier si l'interruption vient du Timer2
    if (PIR1bits.TMR2IF && PIE1bits.TMR2IE)
    {
        PIR1bits.TMR2IF = 0; // On remet le flag à 0 pour signaler qu'on a traité l'interruption

        // Changement progressif du step pour faire un effet de variation de lumière
        if (ascending) {  
            if (step < 30) step++; // On augmente step jusqu'à 30
            else           ascending = 0; // On change de sens quand on atteint le max
        } else {
            if (step > 0)  step--; // On descend jusqu'à 0
            else           ascending = 1; // Et on repart dans l'autre sens
        }

        // Calcul du duty cycle pour la LED
        // step=0 => duty=0 (LED éteinte)
        // step=60 => duty=200 (LED au max)
        unsigned int duty = (200UL * step) / 60UL;

        PWM4DCH = duty; // On met la valeur de luminosité
        PWM4DCL = 0;    // La partie basse du duty cycle (pas trop utile ici)
    }
}

void main(void)
{
    // Initialisation du Timer2 pour la PWM sur RD0
    initTimer2_PWM4();

    // Activation des interruptions globales et des interruptions des périphériques
    INTCONbits.PEIE = 1; 
    INTCONbits.GIE  = 1;

    while(1) // Boucle infinie pour que le programme tourne tout le temps
    {
    }
}