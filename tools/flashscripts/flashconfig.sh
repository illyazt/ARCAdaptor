#!/bin/sh
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 eeprom.eep" >&2
  exit 1
fi

echo "File $1 will be flashed to eeprom area..."
echo "CTRL-C to exit now or"
read -p "Press any key..."
avrdude -p m8 -c usbasp -D -U eeprom:w:$1:i



