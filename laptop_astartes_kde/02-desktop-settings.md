# Settings

- KDE is awesome, but it needs some TLC to help it shine.
- The following settings are grouped by tool and by order within that tool.



# KDE System Settings

- KDE system settings are extensive.
- Sections marked with NA use all of the default settings.

## Quick Settings

- Select Breeze Dark

## Input & Output

- Mouse & Touchpad:
  - Mouse: NA
  - Touchpad:
    - 🗹 Invert scroll direction (Natural scrolling)
  - Screen Edges: NA
- Keyboard:
  - Keybindings: Set Caps Lock to be another Escape.
  - Kwin:
    - Toggle Overview to Meta + Tab (Like Windows)
- Touchscreen: NA
- Multimedia: NA
- Game Controller: NA
- Drawing Tablet: NA
- Sound:
  - Setup default sound device.
- Display & Monitor:
  - Setup monitors.
  - Laptop: 2880x1800 (16:10)
    - 2880, 1440, 720 : 1800, 900, 450
  - Set screen scaling to comfort
- Accessibility: NA

## Connected Devices

- Bluetooth:
  - Add devices
    - Bose Speaker
    - Wacom tablet
    - Keyboard
    - Headsets
- Disks & Cameras: NA
- Thunderbolt: NA
- KDE Connect:
  - Connect phone
- Color Management: NA
- Printers: Add printer.

## Networking

- Wifi & Internet: NA
- Online Accounts: NA

## Appearance & Style

- Wallpaper: Find something nice.
- Colors & Themes:
  - Breeze Dark:
    - 🗹 Appearance settings
    - 🗹 Desktop and window layout
  - Login Screen (SDDM):
    - Inherit Dark Theme
    - Set a dark wallpaper: /usr/share/wallpapers/Next/contents/images_dark/
- Text & Fonts:

## Apps & Windows

- Default Applicaitons: NA
- Notifications: NA
- Window Management:
- Activities:

## Workspace

- General Behavior:
- Serarch:

## Security & Privacy

- Screen Locking:
- Application Permissions:
- KDE Wallet:
- Recent Files:
- User Feedback:

## Language & Time

- Region & Language:
- Spell Check:
- Date & Time:

## System

- About this System:
- Power Management:
- Software Update:
- Users:
- Autostart:
- Session:


---

# KDE Apps

## Krfb

- Allow connections.

## KRunner

- Hit alt-space.
- Select settings.
- Start in center.

# Gnome Tweaks

- Fonts: 
  - Antialiasing: Subpixel (for LCD Screens)
  - Set mono-font to Adobe Source Code Pro, Cascadia, or Fira Code.
- Appearance:
    - Legacy Applications: Adwaita Dark
- Sound:
  = Notification Sounds: 0%
- Mouse & Touchpad:
    - Touchpad: Tap-to-click
- Keyboard
    - Make caps lock an additional control button.
- Windows:
  - Maximize: TRUE
  - Minimize: TRUE
- Windows:
    - Center New Windows: TRUE
    - Resize with Secondary-Click: TRUE

# Gnome Extension Manager

Using within GNOME Extension Manager, I install:

- Clipboard Indicator
- Tactile



# Flat Seal

- Are Flatpaks great? Yes
- Are they perfect? Not yet!

I maintain a list of flatpak specific tweaks I make via Flat Seal.

- LibreOffice
    - Enable D-Bus session bus
- Code (Visual Studio Code)
    - Make sure you have enabled 

# Firefox

I have multiple profiles:

- Andy (Personal) 
- ACPHS

Each email address has an Firefox account. FF will then send you the code.
This will sync extensions, bookmarks, etc.



# Mail

- Use Gnome Online Accounts for Google/GMail.
- Use MS Edge for Outlook (install a web-app)



# VS Code (Flatpak)

If you are drowning in messages that look like this:

```
[304 preload-host-spawn-strategy] Warning: waitpid override ignores groups
```

Add the following to your config (settings.json), restart VSCode and all should be well.

```json
  "terminal.integrated.env.linux": {
    "LD_PRELOAD": null,
  },
```

Getting podman working . . . takes some work.

```bash
flatpak override --user --filesystem=xdg-run/podman com.visualstudio.com
```

# Zoom

On first start, you will get the following message:

> Wayland screen sharing is not yet enabled. 
> Please restart Zoom for it to automatically enable, or manually change the value of "enableWaylandShare" to "true" in "/home/andy/.var/app/us.zoom.Zoom/config/zoomus.conf".

I recommend doing what the nice message tells us to do. 

And then you have one more hoop to jump through. It _still_ didn't work for me, but I found this link:

https://www.reddit.com/r/Fedora/comments/16n1c0j/for_anybody_having_issues_with_zoom_screen/

When I tried to share my screen, the window popped up but it didn't include options to share my desktop and/or screen. But you can fix it:

- Open Zoom settings (cog icon).
- Go to Share Screen -> Advanced.
- Change Screen capture mode on Wayland to Pipewire Mode.

And now everything should work and you don't even have to restart Zoom.
