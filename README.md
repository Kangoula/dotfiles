# dotfiles
all my dotfiles and i3 config

# Dependencies

- i3-gaps
- rofi
- compton
- polybar
- scrot
- feh
- dunst
- nitrogen
- FontAwesome
- FiraCode

# Enable brightness on asus laptop

## Create a conf file

```
sudo vim /usr/share/X11/xorg.conf.d/20-intel.conf
```

```
Section "Device"
        Identifier  "card0"
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
        BusID       "PCI:0:2:0"
EndSection
```
