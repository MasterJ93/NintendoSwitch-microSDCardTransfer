#! /bin/bash

# This script will run a number of commands that prepares the
# microSD card to insert it to your Nintendo Switch. It removes
# any files and tweaks flags that may confuse the Switch, resulting
# in the console to spring issues relating to difficulties in reading
# the microSD card. The commands used were taken by a post from
# r/NintendoSwitch:
# https://www.reddit.com/r/NintendoSwitch/comments/emjvdf/how_to_transfer_sd_card_data_using_macos/

# Switches off the Archive flag in the microSD card.
sudo chflags -R arch /Volumes/Untitled/

# Switches on the Archive flag in the Nintendo folder.
sudo chflags -R noarch /Volumes/Untitled/Nintendo/

# Stops Spotlight from indexing the microSD card.
sudo mdutil -i off /Volumes/Untitled/

# Removes any indexes from the microSD card.
sudo mdutil -E /Volumes/Untitled/

# Deletes all folders starting from "._" from the microSD card.
dot_clean -m /Volumes/Untitled/