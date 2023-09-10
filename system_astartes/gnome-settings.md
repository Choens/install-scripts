# Settings

Gnome is awesome, but it needs some TLC to help it shine. The following sections
are grouped by tool. Changes are listed in order found in the tool.

## Gnome Settings

- Wi-Fi: 
  - Join the local network(s)
- Network
  - NA
- Bluetooth
  - Connect any/all useful BT devices
- Appearance:
  - Style: Dark
  - Wallpaper: Whatever looks like fun
- Notifications:
  - I tend to slowly disable these as they annoy me
- Search: Turn on weather
- Multitasking: 
  - Application Switching: Include applications from current workspace only
- Applications:
  - NA
- Privacy:
  - Blank Screen Delay: 15
  - File History & Trash: 30 Days
- Online Accounts:
    - Google: Usually set-up during initial setup
    - Join others as appropriate
- Sharing:
    - TRUE
    - Device Name:
      - I tend to name these astartes, adeptus, navis_imperialis, etc.
    - Remote Login: TRUE
- Sound:
  - NA
- Power:
  - Automatic Screen Brightness: FALSE
  - Dim SCreen: FALSE
  - Screen Blank: 15 Minutes
- Displays:
    - Set my desktop monitor to be the primary display
    - Nightlight: TRUE
- Mouse and Touchpad:
    - Mouse:
        - Natural Scrolling: TRUE
    - Touchpad:
        - Tap to Click: TRUE
- Keyboard:
    - Why can't I set caps lock here?
- Printers:
    - Add printer
- Removable Media:
    - Autorun software: None
- Color:
  - NA
- Region & Language:
  - NA
- Accessibility:
    - Large Text: TRUE
    - Always Show Accessibility: TRUE
    - Cursor Size: Large
- Users: 
    - Pick a cool icon. Lately, I've been liking the bike.
- Default Applications:
  - Email: Geary
- Date & Time: NA
- About: NA

## Gnome Tweaks

- General:
    - Suspend when laptop lid is closed: FALSE
      - Although, sometimes I set this to TRUE. Depends on what I'm doing.
- Appearance:
    - Legacy Applications: Adwaita Dark
- Fonts: 
  - Antialiasing: Subpixel (for LCD Screens)
  - Set mono-font to Adobe Source Code Pro, Cascadia, or Fira Code.

- Keyboard & Mouse
    - Additional Layout Options: 
        - Caps Lock behavior: Make Caps Lock an additional Ctrl
- Startup Applications: NA
- Top Bar: NA
- Windows Titlebars:
  - Maximize: TRUE
  - Minimize: TRUE
- Windows:
    - Center New Windows: TRUE
    - Resize with Secondary-Click: TRUE

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


## Mail

Links:
- https://sites.utexas.edu/glenmark/2021/02/01/how-to-setup-your-office-365-email-using-evolution-ews-linux/
- https://wiki.gnome.org/Apps/Evolution/EWS/OAuth2

Instructions:

- Google: This is easily set up using the online accounts tool provided by Gnome.
- Office 365 Account: This is, harder. This requires Evolution and the EWS
  extension to work. Open Evolution and create a new mail account. 
  - email address: whatever @ whatever
  - Evolution cannot set this up automatically.
    - It is easier if you skip the auto-setup, but it won't hurt anything.
  - Server type: Exchange Web Services
  - User name: Same as email
  - Host URL: https://outlook.office365.com/EWS/Exchange.asmx
    - BEFORE asking Evolution to fetch the URL, see below. There is a space for
      it to check supported authentication. Let it do that BEFORE you try to
      fetch the URL.
    - And then let Evolution fetch the URL.
    - You will need your password.
  - It works, but it is flakey and may take a couple of tries, especially if you
    are using Microsoft Authenticator.