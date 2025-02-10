#!/bin/bash

if [ "$HOME" == "/home/grandpa" ]; then
    cp ~/eda_tools/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.magicrc ~/.magicrc
    cd ~
    magic -T SKY130A
else
    echo "Error: Can't execute this. The required directory is not found."
    exit 1
fi
