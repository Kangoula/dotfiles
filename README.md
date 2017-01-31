# i3dot
my i3 config files

# Dependencies

- i3-gaps
- rofi
- comption
- mpv
- i3status
- feh
- dunst
- FontAwesome
- FireCode

# enable brightness on asus laptop

## create a conf file

```sudo vim /usr/share/X11/xorg.conf.d/20-intel.conf```

```
Section "Device"
        Identifier  "card0"
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
        BusID       "PCI:0:2:0"
EndSection```

## update grub config

```sudoedit /etc/default/grub```

change the following :
`GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_osi=" `

update grub :
```su -
grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg```
