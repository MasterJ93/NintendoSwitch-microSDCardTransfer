#! /bin/bash

# This script will run a number of commands that prepares the
# microSD card to insert it to your Nintendo Switch. It removes
# any files and tweaks flags that may confuse the Switch, resulting
# in the console to spring issues relating to difficulties in reading
# the microSD card. The commands used were taken by a post from
# r/NintendoSwitch:
# https://www.reddit.com/r/NintendoSwitch/comments/emjvdf/how_to_transfer_sd_card_data_using_macos/

sudo chflags -R arch /Volumes/Untitled/
sudo chflags -R noarch /Volumes/Untitled/Nintendo/
sudo mdutil -i off /Volumes/Untitled/
sudo mdutil -E /Volumes/Untitled/
dot_clean -m /Volumes/Untitled/