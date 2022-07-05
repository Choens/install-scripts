# README:

Contains installation notes/scripts/etc. for my various laptops and 
workstations. I try to keep my systems semi-consistent. Where there are
differences, I try to be consistent in how I identify them. There are parts
of this which are _heavily_ customized for my use, but this could useful to you
if you just want to get some ideas for how to set up your own system.

There is a bias in these instructions for workstations/laptops. Someday, I will
abstract this into Ansible.

# First Steps

## Installaton
1. Install Fedora:
    - Download ISO file, burn to a USB-drive, install.
2. During installation, encrypt the HDD
3. Reboot

## First Boot
- If installing on a fresh system (and not a copy/clone), open
  [Common.md](Common.md) to get started.

## Setup

Worth exploring:

```bash
dnf group list
dnf groupinfo "Development Tools"
```

Start with [Common.md](./Common.md). This contains tools, etc. which I tend to
want on most systems. It contains some common tools/libraries which I am
familiar with. And it includes some basic development tools.

After those are installed, select the set(s) of scripts to run, based on the
nature of the system you are installing.

- [Desktop](./Desktop.md): Commonly used desktop/development tools. This runs
  the gamut from Gimp to SQL tools. I use this on workstations as well as laptops.
- [Laptop.md](./Laptop.md): Utilities I would only run on a laptop. TLP, etc.
  You could install this stuff on a desktop, but why?
- [Meraki.md](./Meraki.md): Useful if you need to interact with a Meraki VPN.
  Otherwise, useless.
- [Server.md](./Server.md): Server software such as Timescaledb, etc. Exactly
  what you want will depend on what you are doing.