---
title: 'The State of Linux Accessibility'
author: TheFake VIP
date: 2016-04-09T00:00:00+01:00
lastmod: 2020-04-17T19:33:17+01:00
draft: false
categories:
  - operating-systems
tags: [Linux, accessibility, gui, gnome, mate, xfce, orca, compiz]
summary: |
  This article documents the state of Linux accessibility when using a graphical desktop. I try to keep this article as current as possible.
---

## Introduction

I am writing this article because there is barely any documentation or
even reviews like this about Linux accessability. I spent ages going
through forum posts and old documentation that didn't really apply
anymore and came up with this.

Before I start, I don't mean to bash the Linux community in any way
because of the lack of documentation: I can see exactly why there isn't
much documentation online about this. First of all, **how many
developers are blind or visually impaired?** And secondly, **How many
people who are blind or visually impaired run Linux?** Turns out, at
least a few people, but nobody who wants to spend hours writing
comprehensive documentation ... except me.

I myself have had blindness from birth, as well as light sensitivity
(photophobia) all my life, so when I got interested in computers, I was
quickly disapointed in the level of accessability that they provided.

I played with computers for years without a screen reader or zoom, just
high contrast, although given my age, I didn't really need a computer
yet. Later I discovered Narrator on Windows XP and how bad it was, but
at least it gave me a starting point. I also later found NVDA and how
much better it was, but ultimately, I wasn't really happy with Windows
itself, especially after I learned of the direction Microsoft was going
in terms of spying on users for monitary gain.

So, like I think most geeks would do ...

## I decided to get a mac!

Voiceover, the built-in screen reader on the mac, was very good, but
again, the mac desktop still didn't seem customisable enough. It wasn't
a developer's desktop, just a standard, consumer focused desktop
experience. And although I still use macOS for video editing, graphics
and audio production, its still by no means perfect.

## But then I found Linux

Linux, as far as I could tell by using my iPad to watch youtube videos
(how else do you learn in the modern age?), was what I had always
dreamed of and, as I got older, I also started to really respect
everybody making all open source projects possible. I loved-and still do
love-the idea of opensource. The only thing holding me back was:

1.  my old pentium 4 IBM thinkcenter with 1GB of ram
2.  the seeming lack of accessability software, more spicifically,
    screen readers out there for Linux.

I was going off barely documented ways of getting ORCA (what I say is
the number 1 screen reader for Linux) to work on desktops other than
GNOME. I was doing this because Gnome 3 had just been released and my
old computer just couldn't handle it properly.. Not only that, but I had
another problem. It was pretty hard to get Linux installed because there
was no accessible installer.

_At least I thought_

Well, after about 4 years of trying, (now 8) I have to say that my situation, as
well as, I can imagine, the situations of various other blind Linux
users, has changed.

### Debian - the ideal solution

Yes. Somewhat surprisingly to me, plain old Debian was one of the best
options. For a start, Debian has a command line speach installer
accessible at least for the net install CD image and the main Debian
ISOs.

**By pressing <kbd>s</kbd> at the boot menu for the cd**, it will load
the TTY and start a completely accessible speach installer with all the
regular options.

This enabled me to install a distro of Linux, but I originally thought I
would still have to use Gnome, or modify an XFCE or Mate installation
for it to work (which requires site). Amazingly though, that was not the
case. I tried XFCE with a Debian base, got it installed, rebooted,
pressed enter on the grub screen, waited, saw the log in screen come up
and then, shockingly to me, heard espeak say "screen reader on". Lets
just say I was very happy to here those synthasised, robotic words.

Most of the XFCE desktop is fully accessible out of the box on Debian
(if you use the command line installer) and I am actually using it to
write this article. Some things are still not working though,such as the
thunar powered XFCE4 desktop and icons and the file manager itself, but
since I use a terminal for those things anyway, I don't really care.
For those of you who need a file manager, although it won't help you
with desktop icons, I can recommend using the **pcmanfm** file
manager as a substitute.

I also tried Mate, thinking that the Gnome 2 fork would be lighter on
resources than Gnome 3, but also accessible because of it's roots and it
worked flawlessly. I would really like to thank Debian, as well as the
creators of the XFCE, Mate and not forgetting Gnome desk tops for making
Linux completely usable for me as a main operating system.

### ubuntu Mate

After using Debian for ages, I decided to buy another used computer (HP
dc-5700, 2007). This shipped with Windows xp, but I replaced it with
Ubuntu Mate, just to see if I could make it accessible. I was glad to
discover that, not only were the accessability settings set correctly
out of the box, but Orca was also pre-installed and fully working. You
can even use it on the live CD by pressing <kbd>Win+Alt+s</kbd> when the
graphical stack loads up.

**I love this distro,** as well as the team who made it and clearly they
know what they're doing. In fact, 4 years on, I'm using Ubuntu Mate
20.04 to edit this.

### added usability - compiz

I originally thought that compiz would be more of a pain than a benefit,
because of my older hardware, but actually, especially on the
ubuntu-Mate machine, it ran really well and gave me access to one of the
most needed features for me ...

#### Negative

I used invert colours on my mac so much, I began to miss it on Linux.
When I found out about the negative plug-in for compiz, I gave it a try.
Not only can you invert the whole screen, but the plug-in is even better
than the mac's version, because you can choose to invert only the
current window as well. I also played around with the "enhanced zoom
desktop" function, and this also works very well with the scroll of a
mouse. If you just want a floating-window zoom though, I would suggest
installing [Magnus](https://github.com/stuartlangridge/magnus), as it is
much lighter weight and is very simple to use (Compiz can be heavyish
and doesn't work on Wayland to my knowledge).

One of the reasons I didn't get very far with some compiz features, and
this is **a minor gripe I have**, was that the compizconfig settings
manager is not very accessible, in that Orca doesn't speak the labels of
text boxes and key selection fields. While I can live with this, it's a
major pain setting compiz up, as you need to use Orca's "flat review"
feature to read the labels, which sometimes won't read the correct label
depending on the physical positioning of the control.

I don't have to mess with it now though, because all it takes is one
tweak in the Mate-tweak control pannel in ubuntu Mate 18.04 and below
(for 20.04 you need to install some Compiz packages) and compiz is my
default window manager. Even better, the negative and zoom plug-ins are
enabled out of the box so all you have to do is hit the correct key
combo.

### The Tradeoff - Application Support

Because I use Orca as my screen reader, which is based on Gnome, meaning
it works best with GTK applications, I have had some problems with QT
application support. Before anyone tells me, yes i've heard of jovie for
kde, but I honestly can't wrap my head around how to set it up properly
or even what on earth it is. I have QT accessability enabled and that
gives me some support (applications like kate and kwrite work), but if I
try to run, say, kdenlive, I get no output from Orca.

Similarly, **electron apps**, meaning most cross-platform programs these
days, also present their own set of problems. Very recently, a lot of
effort has been put into making these accessible and, as of April 2020,
it's good enough that I'm editing this article in Visual Studio Code,
which is a very accessible electron app. There's still more to do to get
these apps (and the Chrome / Chromium browser that they're based on) to
work perfectly, with text selection being something that isn't perfect
yet, but Orca has come a long way since just a year ago when these apps
weren't accessible at all. I plan to write a future article focusing on
just this topic, so stay tuned.

I would love to see people working more on Orca's application and GUI framework support,
as it is the only thing holding me back right now.

## conclusion

To some up, I honestly think that Linux is more accessible than Windows.
I can't, as far as I know, install Windows with a screen reader (edit:
this is certainly possible, video coming soon, but it is in no way made
possible by Microsoft themselves). Also, the gtk standard is pretty
common, so I think that most applications are accessible, whereas on
Windows or macOS, some software providers (microsoft office for mac)
decide to use a none standard way of laying out widgets. Therefor, I
have more of a chance of either getting accessability support out of the
box with Linux apps, or somehow being able to modify settings or in the
worst case code to get it to work.

I hope you enjoyed reading this, but that's all for now. I may publish
more articles about this subject in the future, especially how to get
things working articles, but you'll just have to wait and see. Linux
command line accessibility is quite high up on the list right now
