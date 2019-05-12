#!/usr/bin/env bash

# init
function pause(){
   read -p "$*"
}

find /dev > a
lsusb -v >> a
xinput list >> a

pause 'Plug in USB device and press [Enter] to continue...'

find /dev > b
lsusb -v >> b
xinput list >> b

diff a b
