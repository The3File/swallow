# swallow

swallow applications launched from a terminal
> rewrite of [bspswallow](https://github.com/JopStro/bspswallow)

## configuration

### swallowing applications
by default `swallow` uses `xdg-mime` to get the default programs for images, videos and pdfs with `images/*`, `videos/*` and `application/pdf`.

however you can specify your own by setting `SWALLOW_APPLICATIONS` to the class of the programs that you want to be swallowed

``` bash
# ~/.bash_profile
# set as a regex
export SWALLOW_APPLICATIONS="sxiv|zathura|mpv"
```

### terminals to swallow
the script contains an internal list for `st`, `urxvt` and `kitty` but you can specify your own

``` bash
# ~/.bash_profile
# set as a regex
export SWALLOW_TERMINALS="xterm|gnome-terminal"
```

> note: `SWALLOW_APPLICATIONS` and `SWALLOW_TERMINAL` are both case insensitive, and replaces defaults if set.

## installation
`install` installs to `/usr/local` by default. to change this set `PREFIX=/some/other/path` before you run the script. 

``` bash
git clone https://github.com/The3File/swallow.git
cd swallow
sudo bash -e install
```

## usage

execute the script from ex. `.xinitrc`
``` bash
# ~/.xinitrc
...
exec swallow &
bspwm
```

## dependencies
* `bash`
* `bspwm`
* `xorg-xprop`
* `xdg-utils` 

## ideas
* [ ] hide last node before new note (*my test were extremly buggy, so nothing yet*)
* [x] list of hidden nodes should survive script restart

## notes
i just wanted to be able to add features as i saw fit, and i ended up completely rewriting the script. [@JopStro](https://github.com/JopStro) did most of the hard work though, so thank him if you like it.
