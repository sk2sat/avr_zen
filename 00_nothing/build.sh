#!/bin/bash
zen build-obj --release-small -target avr-freestanding-eabi src/nothing.zen
avr-ld -o firmware.elf nothing.o
avr-objcopy -j .text -j .data -O ihex -R .eeprom firmware.elf firmware.hex
avr-size --mcu=atmega328p -C --format=avr firmware.elf
