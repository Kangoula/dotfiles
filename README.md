# dotfiles
all my dotfiles and i3 config

# Dependencies

- i3-gaps
- rofi
- comption
- mpv
- i3status
- feh
- dunst
- mpd
- ncmpcpp
- polybar
- FontAwesome
- FireCode

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

## Update grub config

```
sudoedit /etc/default/grub
```

change the following :
`GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_osi=`

update grub :
```
su -
grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```

# Credentials

## Fancy Lock Screen
Based on the work of Meskarune : https://github.com/meskarune/i3lock-fancy/
Thanks by the way, it's awesome ! :-)
