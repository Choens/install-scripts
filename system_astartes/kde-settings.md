# Settings

Desktop specific settings.  I should learn how to script these.

### Appearance
- Global Theme: Breeze Dark, because I like it dark.
- Application Style:
  - Configure Gnome/GTK Applications:
    - GTK theme: Adwaita-dark
    - This removes the annoying tendency of electron apps, etc. of having
      light-themed menus.
- Fonts: I set the size under "Adjust All Fonts" to 12 to make life easier for
  my old eyes.

## Workspace

### Workspace Behavior
- Desktop Effects
    - Track Mouse: Enabled
- Screenlocking: Lock after 30 minutes
### Window Management
- NA

#### KWin Scripts:

#### Kzones (2)

Not sure I'll keep this now that something similar is part of KDE natively.

Shortcuts:

| Description                                | Default Binding |
| Move active window to zone                 | Ctrl+Alt+[0-9]  |
| Move active window to previous zone        | Ctrl+Alt+Left   |
| Move active window to next zone            | Ctrl+Alt+Right  |
| Switch to previous window in current zone  | Ctrl+Alt+Down   |
| Switch to next window in current zone      | Ctrl+Alt+Up     |
| Cycle between layouts                      | Ctrl+Alt+D      |
| Toggle OSD                                 | Ctrl+Alt+C      |

Layouts:

```json
[
 {
    "name": "2x1: Left Weighted",
    "padding": 0,
    "zones": [
        {
            "name": "1",
            "x": 0,
            "y": 0,
            "height": 100,
            "width": 73
        },
        {
            "name": "2",
            "x": 73,
            "y": 0,
            "height": 100,
            "width": 27
        }
    ]
 },
 {
    "name": "2x1: Right Weighted",
    "padding": 0,
    "zones": [
        {
            "name": "1",
            "x": 0,
            "y": 0,
            "height": 100,
            "width": 33
        },
        {
            "name": "2",
            "x": 33,
            "y": 0,
            "height": 100,
            "width": 66
        }
    ]
 },
 {
    "name": "3x1 - Center Weighted",
    "padding": 0,
    "zones": [
        {
            "name": "1",
            "x": 0,
            "y": 0,
            "height": 100,
            "width": 25
        },
        {
            "name": "2",
            "x": 25,
            "y": 0,
            "height": 100,
            "width": 50
        },
        {
            "name": "3",
            "x": 75,
            "y": 0,
            "height": 100,
            "width": 25
        }
]
 },
 {
    "name": "3x1 - Even Weighted",
    "padding": 0,
    "zones": [
        {
            "name": "1",
            "x": 0,
            "y": 0,
            "height": 100,
            "width": 33
        },
        {
            "name": "2",
            "x": 33,
            "y": 0,
            "height": 100,
            "width": 34
        },
        {
            "name": "3",
            "x": 67,
            "y": 0,
            "height": 100,
            "width": 33
        }
    ]
 }
]
```
### Shortcuts
- KWin: Ctrl+Meta Left/Right for changing virtual desktops

### Startup and Shutdown
- Add Yakuake to the autostart list.

### Search
- NA

## Personalization

### Notifications
- NA

### Users
- Changed my picture to Hacker Konqi

### Regional Settings
- NA

### Accessibility
- NA

### Applications
- NA

### KDE Wallet
- Use a blank password or set the password to match your login password.
  - Anything else will be annoying.

### Online Accounts
- NA

### User Feedback
- NA

## Network
- NA

### Connections
- NA

### Settings
- NA

## Hardware

### Input Devices
- Keyboard:
    - Caps Lock: Make Caps Lock an additional escape.
- Touchpad:
    - Tap-to-click: Enabled
    - Insert scroll direction (Natural scrolling): Enabled
        - This one is really important. Drive me crazy otherwise.

### Display and Monitor
- NA

### Audio
- NA

### Power Management
- NA

### Bluetooth
- NA

### Color Correction
- install gnome color management . . . .
- sudo dnf install gnome-color-manager

### KDE Connect
- Connect to phone

### Printers
- Connect to local printer(s)

### Removable Storage

### Thunderbolt

## System Administration

### About this System

### Software Update
