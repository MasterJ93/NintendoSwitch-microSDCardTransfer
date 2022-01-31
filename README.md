# Nintendo Switch microSD Card Transfer for macOS

This script will run a number of commands that prepares the microSD card to insert it to your Nintendo Switch. It removes any files and tweaks flags that may confuse the Switch, resulting in the console to spring issues relating to difficulties in reading the microSD card. The commands used were taken by a post from [r/NintendoSwitch](https://www.reddit.com/r/NintendoSwitch/comments/emjvdf/how_to_transfer_sd_card_data_using_macos/).

For now, this has only been tested on macOS 12 Catalina, but I don't expect any differences between Calatina and any eariler versions. I may also add support for Linux, if there's a need for it.

## TODOs

- [ ] Add support for going by the step-by-step process of upgrading to a bigger microSD card
  - [ ] Copying the data from the old microSD card to a new image file
  - [ ] Ejecting the old microSD card and prompting to insert the new microSD card
- [ ] Add loading bars
