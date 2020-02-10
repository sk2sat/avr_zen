#!/bin/bash
zen build-obj --release-small -target avr-freestanding-eabi src/blink.zen
avr-ld -o firmware.elf blink.o
avr-objcopy -j .text -j .data -O ihex -R .eeprom firmware.elf firmware.hex
avr-size --mcu=atmega328p -C --format=avr firmware.elf
