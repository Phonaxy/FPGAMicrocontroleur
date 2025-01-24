/* 
 * File: main.c 
 * Author: Destruhaut Romain
 * Comments: JUNIA AP4 2024-2025
 * Revision history: 
    * 2025/01/24 : File created
 */

/*Resultat : Nous avons bien une alternance des leds qui s'allument de D1 a D4*/
/*puis de D5 à D8*/

#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC

// fonction pour réaliser une temporisation approximative
void delai_approx(void) {
    for (unsigned long i = 0; i < 50000; i++) {  //  ~1 seconde
        //Boucle de vide pour réaliser le délai
    }
}

void main(void) {
    // initialisation des ports
    TRISD = 0x00; // Configure le port D comme sortie
    TRISB = 0x00; // Configure le port B comme sortie
  
    while (1) {
        // allume les LEDs D1 à D4 (bits RD0-RD3 via LATD)
        LATD = 0x0F;  // 00001111 en binaire donc l
        LATB = 0x00;  // 00000000 en binaire donc eteint
        delai_approx();

        // allume les LEDs D5 à D8 (bits RD4-RD7 via LATD)
        LATD = 0x00;  // 00000000 en binaire donc eteint
        LATB = 0x0F; // 11110000 en binaire 
        delai_approx();
    }
}
