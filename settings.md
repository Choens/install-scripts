# Settings

## Gnome Settings

While the above is running, make life a little more comfortable. Gnome is awesome, but it needs some TLC to really make it shine.

Open `Settings`:

- Appearance: Dark
- Search: Turn on weather
- Online Accounts:
    - Google: Usually set up during initial setup.
    - Join others as appropriate.
- Sharing:
    - Enable
    - Device Name: astartes, primarch, etc.
    - Remote Login: Enable
- Displays:
    - Set my desktop monitor to be the primary display.
    - Nightlight: Enable
- Mouse and Touchpad:
    - Mouse:
        - Enable Natural Scrolling
    - Touchpad:
        - Enable "Tap to Click".
- Keyboard:
    - Why can't I set caps lock here?
- Printers:
    - Add printer.
- Removable Media:
    - Disable autorun software.
- Accessibility:
    - Set `Always Show Accessibilty Menu` to TRUE
    - Make the mouse cursor one step bigger.
- Users: 
    - Pick a cool icon. Lately, I've been liking the bike.

## Gnome Tweaks

- General:
    - Suspend when laptop lid is closed: Disable
- Appearance:
    - Legacy Applications: Adwaita Dark
- Keyboard & Mouse
    - Additional Layout Options: 
        - Caps Lock behavior: Make Caps Lock an additional Ctrl
- Windows:
    - Center New Windows: TRUE
- Tweaks: Set mono-font to Adobe Source Code Pro, Cascadia, or Fira Code.
- Bluetooth: Setup headphones, phone.

## DNF

Make dnf faster!

`sudo vim /etc/dnf/dnf.conf`

```
# append the following two lines to
# /etc/dnf/dnf.conf
fastestmirror=true
deltarpm=true
```

## Firefox

I have multiple profiles:

- Andy (Personal) 
- ACPHS

Each email address has an Firefox account. FF will then send you the code.
This will sync extensions, bookmarks, etc.

