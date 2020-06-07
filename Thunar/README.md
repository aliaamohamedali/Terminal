# Thunar File Manager

## How To Use:

* First you gotta have full path in Thunar window Title\
run in terminal:\
`xfconf-query --channel thunar --property /misc-full-path-in-title --create --type bool --set true`

* copy the open_terminal_here.bash file into your prefered folder (eg: /usr/local/bin) folder\
run in terminal:\
`chmod u+r+x /path/to/bash/file/open_terminal_here.bash`

* Open your xfce4 keyboard shortcut config file (probably at: **~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shorcuts.xml**)

* Look for your shorcut of choice and add **"bash /path/to/bash/file/open_terminal_here.bash"** in value param

* open a Thunar window at any location and perform your keyboard shortcut you set

* performing the shorcut with a non-Thunar window in focus will just open the terminal in $HOME
