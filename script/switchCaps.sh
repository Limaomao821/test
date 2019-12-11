#!  /bin/bash
#   PURPOSE###############################
#   This script works for those who cannot
#   be sure about Capslock status. 
#   By binding Capslock key with this scr-
#   ipt, you could get a hint when switch
#   your Capslock status
#   USAGE##################################

output=`xset q | grep 'Caps Lock:   o[nf]*' -o | grep 'o[nf]\+' -o`
case $output in
    'on')
        killall notify-osd
        notify-send -t 1000 "Capslock ON"
        sleep .5 
        killall notify-osd
        ;;
    'off')
        killall notify-osd
        notify-send -t 1000 "Capslock OFF"
        sleep .5
        killall notify-osd
        ;;
esac
