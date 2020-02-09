#!/bin/bash
avrdude -q -V -p atmega328p -C /etc/avrdude.conf -D -c arduino -b 115200 -P $1 -U flash:w:firmware.hex:i
