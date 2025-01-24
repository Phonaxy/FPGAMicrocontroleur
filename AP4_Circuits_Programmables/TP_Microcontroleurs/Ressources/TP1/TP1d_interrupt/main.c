/* 
 * File: main.c 
 * Author: Destruhaut Romain
 * Comments: JUNIA AP4 2024-2025
 * Revision history: 
    * 2025/01/24 : File created
 */

/*Resultat : Nous avons bien une alternance des leds qui s'allument de D1 a D8 */
/*avec Timer2 avec une interruption*/

#include "configbits.h"  
#include <xc.h>

// déclaration de variables globales utilisées dans la routine d'interruption
volatile unsigned char leds_timer2 = 0x01;  // variable pour la gestion du motif des LED D1 a D4
volatile unsigned char port_flag = 0;        // flag pour alterner entre PORTD et PORTB

// routine d'interruption qui est appelée chaque fois que l'interruption Timer2 se déclenche
void __interrupt() isr(void) {
    // vérifie si l'interruption provient de Timer2
    if (TMR2IF) {
        TMR2IF = 0;  // Réinitialise le flag d'interruption de Timer2

        // si port_flag est à 0, on travaille sur PORTD D1 a D4
        if (port_flag == 0) {
            LATD = leds_timer2;  // allume les LED sur PORTD en fonction de leds_timer2
            LATB = 0x00;          // eteint les LED sur PORTB
            leds_timer2 <<= 1;    // décale les LED de manière à faire avancer le motif

            // si toutes les LED de PORTD sont allumées, on réinitialise et on passe à PORTB
            if (leds_timer2 == 0x10) {
                leds_timer2 = 0x01; // réinitialise leds_timer2 pour recommencer le motif
                port_flag = 1;       // change le port à utiliser (PORTB)
            }
        } else {  // si port_flag est à 1, on travaille sur PORTB (D5 à D8)
            LATB = leds_timer2;  // allume les LED sur PORTB
            LATD = 0x00;          // eteint les LED sur PORTD
            leds_timer2 <<= 1;    // décale les LED de manière à faire avancer le motif

            // si toutes les LED de PORTB sont allumées, on réinitialise et on passe à PORTD
            if (leds_timer2 == 0x10) {
                leds_timer2 = 0x01; // réinitialise leds_timer2 pour recommencer le motif
                port_flag = 0;       // change le port à utiliser (PORTD)
            }
        }
    }
}

// Fonction d'initialisation de Timer2
void init_timer2(void) {
    // Configure Timer2 : prescaler à 1:8 (T2CON = 0x07)
    T2CON = 0x07; 
    PR2 = 255;        // configure la valeur de période de Timer2 pour obtenir un intervalle de 1 seconde
    TMR2 = 0;         // réinitialise le compteur du Timer2
    TMR2IF = 0;       // réinitialise le flag d'interruption de Timer2
    TMR2IE = 1;       // active l'interruption de Timer2
    PEIE = 1;         // active les interruptions périphériques
    GIE = 1;          // active les interruptions globales

    // Configure les bits de prescaler de Timer2 (T2OUTPS = 0b1111)
    T2CONbits.T2OUTPS = 0b1111;
}

void main(void) {
    /* Code d'initialisation des ports et du Timer */
    TRISD = 0x00; // configure PORTD comme sortie D1 a D4
    TRISB = 0x00; // configure PORTB comme sortie D5 a D8

    LATD = 0x00;  // eteint toutes les LED sur PORTD au démarrage
    LATB = 0x00;  // eteint toutes les LED sur PORTB au démarrage

    init_timer2(); // initialise Timer2 pour gérer le clignotement des LED avec interruption

    while (1) {
        // boucle infinie vide, car la gestion des LED est gérée par les interruptions
    }
}