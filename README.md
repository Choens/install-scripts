# README

Contains installation notes/scripts/etc. for my personal laptops, 
workstations, and servers. I try to keep my systems semi-consistent. Where there are
differences, I try to be consistent in how I identify them.

## Why is this public?

There are parts of this which are _heavily_ customized for my use, but this could useful to you
if you just want to get some ideas for how to set up your own system.

There is a bias in these instructions for workstations/laptops. Someday, I will
abstract this into Ansible.



# First Steps

## Installaton
1. Install Fedora:
    - Download ISO file, burn to a USB-drive, install.
2. During installation, encrypt the HDD
3. Reboot



# First Steps

Get a copy of the install scripts installed locally.

```bash
sudo dnf install git 

# You don't need this on a server or other system managed via ssh.
sudo dnf install xclip

cd Documents
git clone https://github.com/Choens/install-scripts
```


# Systems

- Astartes: My primary laptop.
- Auspex: Old laptop that lives in the living room. Primary use is powering Zoom meetings on my TV.

- Terra: Local DNS server.
- Emperor: Local development server/database server.

