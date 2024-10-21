# SpideyPC_low_volume
The Spider-Man 2000 PC port has some issues on modern computers, one of them is the audio system. The game is very loud and tabbing out will make you permanently lose control of the game, so there is no way to lower the game volume using the Audio Mixer. 
This little script solve this problem by automatically changing the volume of the game after booting it up.

This script was mase using Python 3.9.8.


# How to use
You can either use the .py script with Python or use the .exe export made using pyinstaller ( https://pyinstaller.org/en/stable/ )

You need to download NirCmd to make this script work: https://www.nirsoft.net/utils/nircmd.html

The **.exe** *(or the **.py**)* and the **.json** file must be put in the same directory of SpideyPC.exe.

Simply launch the **.exe** *(or the **.py**)* to start game with a lowered volume.


# How to config
Here is a description of all the configurations in *SpideyPC_low_volume_config.json*:
- **"Volume"**: The volume percentage that the game will use. Values can go from 0 to 1. The value must be a string, so do not eliminate the quotation marks. Default: *"0.10"*
- **"nircmdc path"**: Path to NirCmd .exe file. Default: *my path, so please set this correctly for yourself*
- **"Sleep time in seconds"**: Time before the volume gets lowered. Without this value, the script doesn't work. Default: *3*
- **"Keep command prompt window open"**: Keep the command prompt window open at the end. Default: *false*

