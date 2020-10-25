
swallow

rewrite of bspswallow

configuration

swallowing applications

by default swallow uses xdg-mime to get the default programs for images, videos and pdfs with images/* , videos/* and application/pdf .

you can specify your own by setting $SWALLOW_APPLICATIONS to the class ( case insensitive ) of the programs that you want to be swallowed in ex. profile or bashrc ( replaces defaults ).

# ~/.bash_profile
export SWALLOW_APPLICATIONS="sxiv zathura mpv"



you can get the class of a program with xprop | grep WM_CLASS .

terminals to swallow

the script contains an internal list for st , urxvt and kitty but you can specify your own ( replaces defaults, case insensitive )

# ~/.bash_profile
export SWALLOW_TERMINALS="xterm gnome-terminal"



usage

execute the script from ex. .xinitrc ( before bspwm )

# ~/.xinitrc
...
exec swallow &
bspwm &



installation

 install.bash installs to /usr/local by default. to change this set export PREFIX=/some/other/path before the script.

git clone https://github.com/The3File/swallow.git
cd bspwm_swallow
sudo . install.bash



dependencies
•  bspwm 
•  bash 
•  xprop 
•  xdg-utils 

notes

i just wanted to be able to add features as i saw fit, and i ended up completely rewriting the script.
@JopStro did all of the hard work, though, so thank him if you like it.