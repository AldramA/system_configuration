#!/bin/sh

# Display options and store the selected one in chiocd
chiocd=$(echo "----\nShutdown\nReboot\nExit" | dmenu -i)

# Check if chiocd is not empty before proceeding
[ -n "$chiocd" ] && {
    case "$chiocd" in
        Shutdown) doas poweroff ;;
        Reboot) doas reboot ;;
        Exit) pkill dwm ;;
        *) echo "Invalid option selected!" ;;
    esac
}

