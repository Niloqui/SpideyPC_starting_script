# SpideyPC_starting_script
The Spider-Man 2000 PC port has some issues on modern computers.
The game is very loud and tabbing out will make you permanently lose control of the game, so there is no way to lower the game volume using the Audio Mixer.
Also, when using dgVoodoo to play this game, you can't position the game window whenever you want, you are forced to use top left corner or center of the screen.
This little script solve these two problems by automatically changing the volume of the game and moving the window after booting the game up.

# How to use
You need to download NirCmd to make this script work: https://www.nirsoft.net/utils/nircmd.html
Both 32-bit and 64-bit work. You can extract NirCmd anywhere on your computer.

Just copy the **.bat** file in the game directory (same folder of SpideyPC.exe).

Simply launch the **.bat** to start game with a lowered volume. You **need** to set up a few variables before launching the script.


# How to config
All the variables are in the **.bat** file. Open the file with any text editor to modify it.

Here is a description of all the configurations in *SpideyPC_starting_script.bat*:
- **nircmd_path**: Path to NirCmd .exe file. Default: *my path, so please set this correctly for yourself*
- **sleep_time**: Time before the volume gets lowered (in seconds). Without this value, the script doesn't work. Default: *5*
- **set_volume**: If true, the script will lower the volume of the game. Default: *true*
- **volume**: The volume that the game will use. Values can go from 0 to 1. Default: *0.10*
- **set_position**: If true, the script will move the game window. Default: *true*
- **position_x** and **position_y**: Where the game will be at the end of the script. These values referes to the position of the top left corner of the window. Default: *320* and *30*
- **window_width** and **window_height**: These two values are only needed for the nircmd command to work, dgVoodoo will determine the game resolution. Default: *1280* and *960*
- **keep_window_open**: Keep the command prompt window open at the end. Default: *false*
