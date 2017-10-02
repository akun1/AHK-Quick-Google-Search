# AHK-Quick-Google-Search
I really liked Alfred on Mac, especially with Command + Space as the hot key to launch it. However, when I switched to Windows that was gone. 

To simulate the Alfred experience, I used an Alfred-alternative for Windows called Wox and used SharpKeys to remap my ctrl and alt buttons. However, the two applications clashed and Wox would not work properly.

So I made this simple script to accomplish what Alfred did for me (I mainly used Alfred to quickly launch Google searches). To remap the keys, I am still using SharpKeys (switching left alt and left ctrl) and this script works well in conjunction with it. As of now, the search GUI will launch when ctrl + space is pressed (the script also has to be running). Also, since I rely so heavily on the Google query autocorrect, I added an autoclick feature that clicks on the Google suggestion, and if there is none it simply clicks on the first result.
