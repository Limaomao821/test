#!  /bin/bash
#   PURPOSE###############################
#   This script works for those who cannot
#   be sure about Capslock status. 
#   By binding Capslock key with this scr-
#   ipt, you could get a hint when switch
#   your Capslock status
#   USAGE##################################

output = xset q | grep 'Caps Lock' | awk '{ print $NF }'
echo "$output"