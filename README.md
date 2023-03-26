# README

Contains installation notes/scripts/etc. for my personal laptops, workstations,
and servers. I try to keep my systems semi-consistent. Where there are
differences, I try to be consistent in how I identify them.

## Why is this public?

There are parts of this which are _heavily_ customized for my use, but this
could useful to you if you just want to get some ideas for how to set up your
own system.

Someday, I will port this to Ansible.



# First Steps

## Installaton
1. Install Fedora:
    - Download ISO file, burn to a USB-drive, install.
    - https://getfedora.org/
      - I recommend the default Fedora Workstation for new users.
      - Users working for KDE should download the KDE Spin.
      - The other spins are also terrific, although the notes here are not
        helpful or relevant.
2. During installation, encrypt the HDD
3. Reboot



# First Steps
You can copy/paste this code from GitHub, although it is easier to run locally.
To get a copy of the install scripts installed locally:

```bash
sudo dnf install git

# You don't need this on a server or other system managed via ssh.
sudo dnf install xclip

cd Documents
git clone https://github.com/Choens/install-scripts
```


# Systems

- Astartes: My primary laptop.
  - When I have more than one, I use other Warhammer 40K inspired names.
- Auspex: Old laptop that lives in the living room. Primary use is powering Zoom meetings on my TV.
- Primarch: Local server
