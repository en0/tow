/*
 * count_1mhz.c 
 * This program puts an eight bit 
 * value in binary on ports C0 - C3.
 *
 * Copywrite 2012 Ian Laird.
 */

#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

# define len(arr) (sizeof(arr)/sizeof(*(arr)))
# define as_frame(bits, c) ((c << 9)|bits)
/* Proto */

void wait(int duration_ms);
void animate(unsigned short frames[], unsigned int frame_count, unsigned int frame_delay);
void display_val();
void update_inputs();
void update_val();

/* Vars */

static int current_val = 0;
static char pressed[] = {0, 0};
static char triggered[] = {0, 0};

unsigned int ani_start_delay = 125;
unsigned short ani_start[] = {
    as_frame(0b000000000, 1),
    as_frame(0b000010000, 1),
    as_frame(0b000111000, 1),
    as_frame(0b001111100, 1),
    as_frame(0b011111110, 1),
    as_frame(0b111111111, 8),
    as_frame(0b011111110, 8),
    as_frame(0b001111100, 8),
    as_frame(0b000111000, 8),
    as_frame(0b000010000, 4),
    as_frame(0b000000000, 1),
    as_frame(0b000010000, 1),
    as_frame(0b000000000, 1),
    as_frame(0b000010000, 1),
    as_frame(0b000000000, 1),
    as_frame(0b000010000, 1),
    as_frame(0b000000000, 1),
    as_frame(0b000010000, 1),
};

#define ANIMATE_START (animate(ani_start, len(ani_start), ani_start_delay))

unsigned int ani_p1_delay = 500;
unsigned short ani_p1[] = {
    as_frame(0b111100000, 1),
    as_frame(0b000010000, 1),
    as_frame(0b111100000, 1),
    as_frame(0b000010000, 1),
    as_frame(0b111100000, 1),
    as_frame(0b000010000, 1),
    as_frame(0b111100000, 1),
    as_frame(0b000010000, 1),
};

#define ANIMATE_P1 (animate(ani_p1, len(ani_p1), ani_p1_delay))

unsigned int ani_p2_delay = 500;
unsigned short ani_p2[] = {
    as_frame(0b000001111, 1),
    as_frame(0b000010000, 1),
    as_frame(0b000001111, 1),
    as_frame(0b000010000, 1),
    as_frame(0b000001111, 1),
    as_frame(0b000010000, 1),
    as_frame(0b000001111, 1),
    as_frame(0b000010000, 1),
};

#define ANIMATE_P2 (animate(ani_p2, len(ani_p2), ani_p2_delay))

/* Codes */

int main (void)
{

    // Initialize PORTD for output
    DDRD = 0b11111111;
    DDRC = 0b00000001;
    DDRB = 0b00000000;
    PORTB |= 0b00000011;

    PORTD = 0x00;
    PORTC = 0x01;

    ANIMATE_START;

    int cyl = 0;
    int bal = 0;

    while (1==1) {
        cyl++;

        update_inputs();

        if (triggered[0] == 1) {
            //current_val++;
            bal++;
        }

        if (triggered[1] == 1) {
            //current_val--;
            bal--;
        }

        if (cyl % 20000 == 0) {
            if (bal < 0)
                current_val--;
            else if (bal > 0)
                current_val++;
            bal = 0;
            cyl = 0;
        }

        display_val();

        if (current_val < -4) {
            ANIMATE_P2;
            break;
        }
        else if (current_val > 4) {
            ANIMATE_P1;
            break;
        }
    }

    return 0;
}

void wait(int duration_ms) {
    while (duration_ms > 0) {
        _delay_ms(1);
        duration_ms--;
    }
}

void animate(unsigned short frames[], unsigned int frame_count, unsigned int frame_delay) {
    /* 
     * Each frame is structured like this:
     *  cccccccttttrbbbb
     * c is the frame delay muliplyer
     * t are the top bits of port D
     * b are teh bottom bits of port D
     * r is the first bit of port C
     */
    for (int i = 0; i < frame_count; i++) {
        short c = (frames[i] & 0b1111111000000000) >> 9;
        short t = (frames[i] & 0b111100000) >> 1;
        short b = frames[i] & 0b000001111;
        PORTD = t | b;
        PORTC = (frames[i] & 0b10000) >> 4;
        wait(frame_delay * c);
    }
}

void update_inputs() {

    char _pressed[] = {
        (PINB & 0b00000001) == 0,
        (PINB & 0b00000010) == 0,
    };

    for (char i = 0; i < 2; i++) {
        triggered[i] = 0;
        if (pressed[i] == 0 && _pressed[i] == 1) {
            triggered[i] = 1;
            pressed[i] = 1;
        } else if (pressed[i] == 1 && _pressed[i] == 0) {
            pressed[i] = 0;
        }
    }
}

void update_val() {
    if (triggered[0] == 1) {
        current_val--;
    }

    if (triggered[1] == 1) {
        current_val++;
    }
}

void display_val() {
    switch(current_val) {
        case -4:
            PORTD = 0b00001111;
            break;
        case -3:
            PORTD = 0b00011111;
            break;
        case -2:
            PORTD = 0b00111111;
            break;
        case -1:
            PORTD = 0b01111111;
            break;
        case 0:
            PORTD = 0b11111111;
            break;
        case 1:
            PORTD = 0b11111110;
            break;
        case 2:
            PORTD = 0b11111100;
            break;
        case 3:
            PORTD = 0b11111000;
            break;
        case 4:
            PORTD = 0b11110000;
            break;
        default:
            PORTD = 0b00000000;
            break;
    }
}
