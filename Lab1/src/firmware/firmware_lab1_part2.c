#include <stdint.h>
// Ejercicio 2 Lab 1 quitando ciclo while


#define LED_REGISTERS_MEMORY_ADD 0x10000000
#define LOOP_WAIT_LIMIT 100


static void putuint(uint32_t i) {
	*((volatile uint32_t *)LED_REGISTERS_MEMORY_ADD) = i;
}

void main() {
	uint32_t number_to_display = 0;
	uint32_t counter = 0;

		counter = 0;
		putuint(number_to_display);
		number_to_display++;
	}
