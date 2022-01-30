#! /bin/bash

# This script will run a number of commands that prepares the
# microSD card to insert it to your Nintendo Switch. It removes
# any files and tweaks flags that may confuse the Switch, resulting
# in the console to spring issues relating to difficulties in reading
# the microSD card. The commands used were taken by a post from
# r/NintendoSwitch:
# https://www.reddit.com/r/NintendoSwitch/comments/emjvdf/how_to_transfer_sd_card_data_using_macos/

# Switches off the Archive flag in the microSD card.
chflags -R arch /Volumes/Untitled/

# Switches on the Archive flag in the Nintendo folder.
chflags -R noarch /Volumes/Untitled/Nintendo/

# Stops Spotlight from indexing the microSD card.
mdutil -i off /Volumes/Untitled/

# Removes any indexes from the microSD card.
mdutil -E /Volumes/Untitled/

# Deletes all folders starting from "._" from the microSD card.
sudo -u "$REAL_USER" dot_clean -m /Volumes/Untitled/

# TODO: Create user input asking if they want the script to safely
# eject the microSD card from the Mac.
echo 'Completed the microSD card preparation process.'

CAN_EJECT=false

while [ $CAN_EJECT == false ]
do
    read -rp "Eject the microSD card automatically? (y/n) " CAN_EJECT
    case $CAN_EJECT in
	"y")
		echo "Attempting to eject your microSD card..."
		diskutil unmount /Volumes/Untitled/
		echo "Your microSD card has been ejected. When you're ready, remove the microSD card, then insert it to your Nintendo Switch."
		CAN_EJECT=true
		;;
    "n")
		echo "Ok, your microSD will remain mounted to your Mac."
		echo "When you're ready, eject and remove the microSD card, then insert it to your Nintendo Switch."
		CAN_EJECT=true
		;;
    *)
		echo "Please press y or n in order to continue."
		;;
    esac
done