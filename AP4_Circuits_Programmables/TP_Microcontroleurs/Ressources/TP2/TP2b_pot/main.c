/* 
 * File: main.c 
 * Author: Destruhaut Romain
 * Comments: JUNIA AP4 2024-2025
 * Revision history: 
    * 2025/02/10 : File created
 */

/*Resultat : Nous avons bien une alternance des leds qui s'allument de D1 a D8 en fonction du potentiometre */

#include <xc.h>
#include "configbits.h"  
#define _XTAL_FREQ 8000000

void initADC(void)
{
    // Remise à zéro
    ADCON0 = 0;
    ADCON1 = 0;

    // Sélection du canal AN0
    ADCON0bits.CHS = 0;

    // Justification à droite, référence VDD/VSS
    ADCON1bits.ADFM   = 1; // 1 
    ADCON1bits.ADPREF = 0; // Vref+ = VDD
    ADCON1bits.ADNREF = 0; // Vref- = VSS

    // Horloge ADC = Fosc/64
    ADCON1bits.ADCS   = 0b110; 

    // Activer le module ADC
    ADCON0bits.ADON   = 1;
}

int readADC(void)
{
    ADCON0bits.GO = 1;          // Démarrage conversion
    while (ADCON0bits.GO == 1); // Attente fin
    return ((ADRESH << 8) | ADRESL);
    // On décale ADRESH de 8 bits vers la gauche (pour former la partie haute),
		// puis on fusionne ("|") avec ADRESL (partie basse).
		// Ainsi, on reconstitue la valeur complète (0..1023) issue de l'ADC.
}

void main(void)
{
    // Horloge interne à 8 MHz
    OSCCON = 0x70;  // IRCF=0111 => 8 MHz

    // (A) Config RA0 en entrée analogique pour le potentiomètre
    TRISAbits.TRISA0 = 1;
    ANSELAbits.ANSA0 = 1;

    // (B) Config des sorties LEDs
    //     D1..D4 => RD0..RD3, D5..D8 => RB0..RB3
    TRISD &= 0xF0;  // RD0..RD3 en sortie
    TRISB &= 0xF0;  // RB0..RB3 en sortie
    ANSELB &= 0xF0; // Désactive l'analogique sur RB0..RB3
    LATD  &= 0xF0;  // Eteint D1..D4
    LATB  &= 0xF0;  // Eteint D5..D8

    // (C) Initialise l'ADC
    initADC();

    while(1)
    {
        // Lecture du potentiomètre: 0..1023
        int val = readADC();

        // Calcul d'un index 0..7 (chaque 128 points du CAN correspond à une LED)
        int index = val / 128;

        // Variables pour stocker le bit à allumer
        int maskD = 0;
        int maskB = 0;

        // Sélection de la LED via un switch
        switch(index)
        {
            case 0: maskD = 0x01; break;  // D1 => RD0
            case 1: maskD = 0x02; break;  // D2 => RD1
            case 2: maskD = 0x04; break;  // D3 => RD2
            case 3: maskD = 0x08; break;  // D4 => RD3
            case 4: maskB = 0x01; break;  // D5 => RB0
            case 5: maskB = 0x02; break;  // D6 => RB1
            case 6: maskB = 0x04; break;  // D7 => RB2
            case 7: maskB = 0x08; break;  // D8 => RB3
            default:
                break;
        }

        // On éteint l'existant (bits 0..3) puis on allume la bonne LED
        LATD = (LATD & 0xF0) | (maskD & 0x0F);  
		// (LATD & 0xF0) conserve les bits 4..7 (partie haute) du registre LATD 
		// et met à zéro les bits 0..3.
		// (maskD & 0x0F) représente la LED à allumer sur les bits 0..3.
		// L'opération "|" (OR logique) remplace donc uniquement la partie basse
		// de LATD, sans modifier le reste.

        LATB = (LATB & 0xF0) | (maskB & 0x0F);
        // Même principe que sur LATD : on ne touche pas aux bits 4..7,
				// on insère maskB (bits 0..3) pour définir la LED à allumer sur le port B.
    }
}