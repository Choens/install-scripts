# README:

Contains installation notes/scripts/etc. for my various laptops and
workstations. The master branch contains scripts common to all
systems. Each computer has a separate branch for things which are
different or which I think will diverge over time.

Files are numbered in the order in which they should be applied.

- **00-init.sh:** Installs git and copies installation repo to local PC
- **01-base.sh:** CLI / libraries
- **02-gnome.sh:** Software related to the GNOME project
- **03-desktop.sh:** Other desktop tools.
- **04-setup.sh:** Useful commands to set things up MY way.
- **notes.md:** Collection of things I do manually.

Additional scripts which may be helpful:

- **sudoers:** Make current user a member of the sudoers group.
  - This is only necessary if your user _isn't_ in the sudoers
    group. If you are, skip this step.
- **upgrade.sh:** CLI instructions for upgrading a Fedora
  system. Obviously only useful when there is a newer version of
  Fedora, but that comes along every ~6 months.
  - Less useful than it was not that Fedora can be upgraded via Gnome
    Software.
  - In the script, change 2x to the version of Fedora you want to
    upgrade to BEFORE running the script or you will get an error.

This organization is entirely arbitrary. For example, emacs is
installed as part of `03-desktop.sh` because I really like emacs. So,
feel free to use any of this that is useful, but realize it is
arbitrary.

Because I only run these scripts when I install/reinstall a PC, things
may be a little bit-rotted. If you find a bug, feel free to open a bug
report.

PC-specific problems/bugs will be in GH Issues in the appropriate
branch.

# Workstations:

*Personal* workstations are named after Autobots. *Professional*
workstations are named after Decepticons, because work is sometimes
evil.

## Optimus: 

Primary personal laptop.

- **Model:** Dell XPS 13 (P54G)
- **Branch:** optimus
- Includes programming tools, data analysis tools, and photography
  tools.

## Sentinel:

Personal workstations.

## Megatron:

Acuitas Health owned laptop.

- **Model:** Dell XPS 15 (9560)
- **Branch:** megatron
- Contains programming tools and data analysis tools.
