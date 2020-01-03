#!/bin/bash

cd "$(dirname "$0")"


scp .pio/build/sanguino_atmega1284p/firmware.hex hassbian-local:3dprint/printer/firmware.hex || exit
ssh hassbian-local "~/3dprint/printer/flash.sh"

