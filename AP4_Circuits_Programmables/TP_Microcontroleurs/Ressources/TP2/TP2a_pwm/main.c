#include <xc.h>

void main(void) {
    // Initialize Ports
    TRISBbits.TRISB0 = 1;   // RB0 comme input (Le bouton S1)
    TRISDbits.TRISD0 = 0;   // RD0 comme output (la LED D1)
    
    ANSELBbits.ANSB0 = 0;   // Set de RB0 comme output digital
    ANSELD = 0x00;          // Set de PORTD comme outputs digital
    
    LATDbits.LATD0 = 0;     // LED D1 disable au démarrage

    while (1) {
        // Check de l'appui du bouton avec la logique active low
        if (PORTBbits.RB0 == 0) {  
            if (PORTBbits.RB0 == 0) {  // Confirmation que le bouton est encore préssé
                LATDbits.LATD0 = 1;    // Allumage de la led D1
                while (PORTBbits.RB0 == 0); // Tant que le bouton n'est pas relâché
            }
        } else {
            LATDbits.LATD0 = 0;        // Extinction led D1 sur relâchement
        }
    }
}

