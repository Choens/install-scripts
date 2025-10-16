# Settings

- Gnome is awesome, but it needs some TLC to help it shine.
- The following settings are grouped by tool and by order within that tool.

# Fractional Scaling

Gnome has not made this the default. Remember, after changing this setting, you must log out and then log back in to make it take effect.

## Enable fractional scaling:

```shell
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
```

## Disable fractional scaling:

```shell
gsettings set org.gnome.mutter experimental-features "[]"
```

# Gnome Extensions

- Clipboard Indicator:
    - Not available via a Fedora RPM.
    - Install via Extension Manager
    - gnome-shell-extension-clipboard-indicator
    - https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator

# Gnome Settings

- Wi-Fi: 
  - Join the local network(s)
- Network
  - NA
- Bluetooth
  - Connect any/all useful BT devices
- Displays:
    - Set my desktop monitor to be the primary display
    - Nightlight: TRUE (Unless I'm teaching)
    - Fractional scaling (Useful if you use a 2k monitor):
      - https://www.omglinux.com/how-to-enable-fractional-scaling-fedora/
- Sound:
  - NA
- Power:
  - Automatic Screen Brightness: FALSE
  - Dim Screen: FALSE
  - Screen Blank: 15 Minutes
- Multitasking: 
  - Workspaces on all displays
  - Application Switching: Include applications from current workspace only
- Appearance:
  - Style: Dark
  - Wallpaper: Whatever looks like fun
- Notifications:
  - I tend to slowly disable these as they annoy me
- Search: Turn on weather
- Applications:
  - NA
- Privacy:
  - Blank Screen Delay: 15
  - File History & Trash: 30 Days
- Online Accounts:
    - Google: Usually setup during initial setup
    - Join others as appropriate
      - Unfortunately, Office 365 is not supported.
- Sharing:
    - TRUE
    - Device Name:
      - I tend to name these astartes, adeptus, navis_imperialis, etc.
- Mouse and Touchpad:
- Keyboard:
    - Why can't I set caps lock here?
- Color
- Printers
    - Add
- Wacom Tablet
    - Add
- Accessibility
- Privacy & Security
- System
    - Users: Give self a nice image.

# Gnome Tweaks

- Fonts: 
  - Antialiasing: Subpixel (for LCD Screens)
  - Set mono-font to Adobe Source Code Pro, Cascadia, or Fira Code.
- Appearance:
    - Legacy Applications: Adwaita Dark
- Sound
- Mouse & Touchpad
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
