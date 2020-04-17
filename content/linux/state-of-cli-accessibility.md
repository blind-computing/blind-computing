---
title: 'The State of Linux Command Line Accessibility'
author: TheFake VIP
date: 2018-04-09T22:13:01+01:00
lastmod: 2020-04-17T22:13:01+01:00
draft: false
categories:
  - operating-systems
tags: [linux, cli, speakup, fenrir]
summary: |
  In this article, we explore the options available when setting up a command-line-only Linux installation. From speakup to fenrir, there's a lot to offer.
---

## Introduction

A long, long time ago, I wrote an article about [The State of Linux
Desktop Accessibility]({{< relref "state-of-accessibility.md" >}}) and
how I was and am continuously using linux for my daily computing and
developing needs. But one of the questions I know even I asked was:
**what is linux command line accessibility like?** Well, this article's
going to answer that.

## GUI Terminal Accessibility

Before we get onto the meat and potatoes of this article, I'd like to
take a moment to discuss terminal emulater accessibility for desktop
environments. Here's some quick notes.

1.  The default x11 terminal emulater, **XTerm**, is not accessible in
    any way, shape or form. I believe this is due to the fact that XTerm
    doesn't use any GUI libraries like GTK or QT and interfaces with the
    X server more directly, but I've never cared enough to find out.
    This also means that terminals like **urxvt** and **Suckless' st**
    don't work either.
2.  The terminal emulaters: **xfce4-terminal**, **mate-terminal** and
    **gnome-terminal** are fully accessible to my knowledge (I use all
    of them consistantly every day). I personally prefer mate-terminal,
    but the choice is yours.
3.  I've just checked by installing it on my arch system and it appears
    that **terminator** is fully accessible, including split windows as
    long as you remember the keyboard shortcut <kbd>Alt+Arrow Key</kbd> to move
    between panes. I have not tested this extensively as of now, but
    will edit this article if I decide to test it out. Another thing to
    note is that because terminator uses separate GUI widgets for each
    split pane, unlike terminal agnostic split solutions like tmux and
    screen, creating verticle panes does not result in the screen reader
    reading both the line on the left and the line on the right where
    the cursor is at, so its a more usible feature for screen reader
    users.
4.  **QT based terminals** are to my knowledge not accessible at all (I
    just checked using **konsole** on arch XFCE), so these are off
    limits, at least for now.

Okay, okay, that's enough! Now, let's get onto what you've all come
here for.

## TTY Accessibility

### Speakup

Speakup is the kernel modual that makes linux TTY accessibility
possible. You can find its home page at [This Link to the Speakup Home
Page](https://www.linux-speakup.org), where you will find information,
some useful, some really, really not (as it pertains to obscenely
expensive speech synthasizers that nobody has any more) about how to get
speakup running and some basic commands.

Really though, this page isn't needed, as speakup works exactly how
you'd expect it to work. Of course, if you want to learn how to use
features like built-in copy and paste, the instructions on this page will
help you out, but for the most part, things should just work.

Things will also just work because speakup is now integrated into the
kernel of almost all distributions, so all you need to do is install a
synthasizer, like ...

#### ESpeakup

ESpeakup is a common plugin for speakup. IT provides a bridge between
speakup and the very common espeak speech synthasizer that everyone in
the free assistive tech community uses, mostly due to its speed. This
allows you to use speakup on a modern system where you have more than
enough power to synthasise speech in software, instead of throwing
yourself back in the 90s, when you had to buy a speech synthasizer card
and install drivers. It is a very basic modual, often under the name
"**espeakup**" in most package managers and all it takes is an install
to get it working.

The ESpeakup package usually sets up a SystemD service that auto-starts
whenever the computer boots. However, you can always disable this
service and enable it on demand when you need it.

```bash
sudo systemctl enable|disable espeakup # specify whether espeakup autostarts
sudo systemctl start|stop espeakup # start or stop the current instance of espeakup
```

If you just want to silence speakup for a while, a better way is to
press the <kbd>Print Screen</kbd> key, which toggles speech.

#### Speechdup

This is a speakup driver that will allow you to use a speech-dispatcher
daemon as your speech synthesiser. This will play nice if you also use
Orca or [Fenrir]({{< relref "#fenrir---a-new-generation-of-console-screen-readers" >}}), but short of giving it a section here, I haven't played
around with it enough to get it to work yet.

#### Supported Distros

Many distributions are supported when it comes to installing and using
speakup, but I've found one of the two following work the best. Of
course, I haven't had experience with _all_ distros, so feel free to
leave a comment if you've got any recommendations.

#### Debian

The ever versitile debian comes to the rescue again. I mentioned in my
[last article]({{< relref "state-of-accessibility.md" >}}) how debian provides a "speech" mode in their install
media. Well, if you install a debian based system without a graphical
interface using this method, you will already have espeakup installed
and working, as the installer sets it up for you when you use the speech
installer. **No further setup required**

#### Arch Linux

Yes, the good old, venerable arch linux has got you covered if you want
a bleeding edge CLI, or for that matter GUI accessible experience.
You'll need to download the [Talking Arch ISO with ESpeakup
support](https://talkingarch.info/) and follow some extra steps when
installing, documented in the [Arch Linux Wiki Page for Talking
Arch](https://wiki.archlinux.org/index.php/TalkingArch) and you'll have
a fully working, speech enabled arch system.

### Fenrir - A New Generation of Console Screen Readers

[Fenrir](https://github.com/chrys87/fenrir) is a user-land screen reader
for the linux console. Unlike speakup, which works how you'd expect
a kernel module to work, Fenrir is very much **more normal**. It uses a
regular config file, can interface with speech-dispatcher, espeak
directly or can even use a generic command for speech output, has sound
icon support (which is probably its best feature), better highlight
tracking and is written in python, making it much more hackable and
scriptable (it even provides script support)! Its
[documentation](https://wiki.linux-a11y.org/doku.php?id=fenrir_user_manual)
is pretty complete, if a little broken in the language department (a
great way to help out if you'd like), but it's most certainly good
enough to help you get up and running and a lot more!

On the whole, Fenrir is very young but is **progressing at a much
quicker pace** than speakup and I'd highly recommend you check it out

## Conclusion

It should come as no surprise to anyone that the linux command line is
accessible. I mean, not only is the GUI very accessible, but the main
use of linux today is on servers, where no GUI is installed, much less
an accessible one. Plus, if something's going to be accessible, it's
going to be text. Needless to say, it works absolutely fine and is
trivial to set up.

I hope you found this article helpful, but that's all for now. More
articles are to come on various linux accessibility topics, including a
tutorial on how to get a fully working arch linux desktop setup for the
blind and visually impaired, so you can look forward to that.
