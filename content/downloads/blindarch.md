---
title: "BlindArch - An Accessible Arch Linux Installer / Live CD"
author: TheFake VIP and JDF
date: 2020-11-14T16:34:18Z
tags:
  - linux
  - arch
  - orca
draft: false
summary: |
  A project based on Talking Arch to create an ArchLinux live + install CD for blind and visually impaired
  users. Also offers an easy to use installer
  to allow users to set up a completely accessible and customisable arch
  linux installation.
---

[Download latest release](https://downloads.blindcomputing.org/blindarch/BlindArch-2020.11.28-x86_64.iso)
\| [View all releases](https://downloads.blindcomputing.org/blindarch)
\| [View on Github](https://github.com/blind-computing/blindarch)

## What is BlindArch?

BlindArch is a project based on [Talking Arch](http://talkingarch.info) to create an ArchLinux live + install CD for
blind and visually impaired users. It also offers an easy to use installer based on [EZArch by
Eznix](https://sourceforge.net/projects/ezarch/) to allow users to set up a completely accessible and customisable arch
linux installation.

Arch Linux offers unparalleled tweakability and choice, but it can also be a pain to install, especially when you have
to consider the desktop-environment specific tweaks you need to make in order for your new system to be accessible. This
live CD aims to set you up with an arch distribution that is accessible out of the box and ready to go!

## Available Environments

BlindArch offers a range of desktop environments and window managers to choose from, all of which come with the
necessary tweaks made to make them fully accessible:

- [Gnome](https://gnome.org) ([installation notes](#gnome-users))
- [I3](https://i3-wm.org) ([installation notes](#i3-users))
- [Mate](https://mate-desktop.org) ([installation notes](#mate-users))
- [Sinnamon](https://cinnamon-spices.linuxmint.com) ([installation notes](#sinnamon-users))
- [XFCE](https://xfce.org) ([installation notes](#xfce-users))

## Installation Notes

- The partitioner built into the installation script will **WIPE THE DRIVE YOU SELECT!** You have been warned!
- The service name for the cups printing system has changed since prior versions. if printing doesn't work and you are
  using an older install medium, run `systemctl enable cups.service` to enable printing.

### Gnome Users

- Gnome is installed with speach enabled by default. In addition we enable autologin to prevent screen reader
  accessibility issues.
- [Additional information on enabling Orca can be found
  here](https://help.gnome.org/users/orca/stable/howto_the_orca_modifier.html.en).
- The screen reader application can be enabled or disabled with the keyboard shortcut `ALT + SUPER + S`.

### I3 Users

- i3 is installed with speach enabled by default. In addition we enable autologin to prevent screen reader
  accessibility issues.
- There is a script called `vol` added to `/usr/bin` in this release. This file allows the mapping of volume
  adjustments in the i3 config. It also plays a tone when the volume is changed.

### Mate Users

- MATE is installed with speach enabled by default. In addition we enable autologin to prevent screen reader
  accessibility issues.
- MATE does not have any keyboard shortcuts in the default install. You may change keyboard shortcuts for the
  environment by going to the System menu -\> Preferences -\> Hardware -\> Keyboard Shortcuts.
- You may change accessibility settings by going to the System menu -\> Preferences -\> Personal -\> Assistive
  Technologies.

### Sinnamon Users

- Cinnamon currently requires speech to be enabled manually after login. We are working to correct this as soon as
  possible. You can use the following command in the CLI to enable it for now:

  ```{.bash}
  gsettings set org.gnome.desktop.a11y.applications screen-reader-enabled true
  ```

- Autologin is enabled during the install.

### XFCE Users

- xfce is installed with speach enabled by default. In addition we enable autologin to prevent screen reader
  accessibility issues.

### Manual Partitioning (For Advanced Users)

You may choose to forego the automatic partitioning and run the installer scripts manually. Simply partition as you
would normally during a stock Arch installation, mount your drives, then run the `ezarch.bios` or `ezarch.uefi` script
to install for either legacy or eufi systems respectively.
