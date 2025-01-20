# Introduction to Linux

- Welcome page and syllabus: <a href="https://hpc2n.github.io/intro-linux/index.html">https://hpc2n.github.io/intro-linux/index.html</a>
    - Also link at the House symbol at the top of the page. 

## What is Linux

!!! note 

    Most of the commands you learn in this course is agnostic and works on any Linux/Unix like system. MacOS is also a Unix-like OS, and the majority of the commands are the same. 

Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released on September 17, 1991, by Linus Torvalds.

An operating system is the software that sits underneath all of the other software on a computer, managing the computer’s hardware (CPU, GPU, memory, storage...) and taking care of the connections between your other software and the hardware. 

Linux is typically packaged as a Linux distribution, which includes the kernel and supporting system software and libraries, many of which are provided by the GNU Project.

!!! Note "Distributions (distros)"

    There are many Linux distribuitions, including Ubuntu, Debian, Fedora, Gentoo, and many others. Many distributions are free and open source, but there are also commercial distributions, like Red Hat Enterprise and SUSE.

    Desktop Linux distributions include <a href="https://en.wikipedia.org/wiki/Desktop_environment" target="_blank">a desktop environment</a>, like GNOME, MATE, KDE Plasma, Xfce, Unity, or many others. A window manager together with applications written using a widget toolkit are generally responsible for most of what the user sees.

In addition, a windowing system of some sort (X11, Wayland) interfaces directly with the underlying operating system and libraries, providing support for graphical hardware, pointing devices, and keyboards. The window manager generally runs on top of this windowing system.

## Shell 

The shell is a special user program. It is an interface between the keyboard and the operating system (OS) I.e. it takes commands input the user give from the keyboard and sends it to the OS which then performs the actions requested. 

The shell we are looking at in this course is the Linux/Unix shell, which is a command-line interpreter providing a Command Line Interface (CLI) for Unix-like systems. More about that in the next part. 

!!! Note

    There are several shells, which has somewhat different properties: 

    - The Bourne Shell (sh)
    - The GNU Bourne-Again shell (bash)
    - The C shell (csh)
    - The Korn Shell (ksh) 
    - The Z Shell (zsh) 

!!! Important 

    Most centers has ``bash`` as default. There are several reasons, but one is that it is what is compatible with SLURM - the batch scheduler used at most centers in Sweden. ``bash`` is also good for scripting. 

    For the majority of the material in this course, it does not matter which shell you are using, but there are some commands where it is relevant. We will therefore be using ``bash`` for this course. 

## Why Linux/Unix (shell) 

The Linux/Unix shell has existed for a very long time (Thompson shell, 1971; Bourne shell, 1979). 

- The reason it keeps being used is that it is a very powerful tool which lets users perform complex and powerful tasks. 
- These tasks can often be done using a few keystrokes or maybe a few lines of code. 
- It can be used to automate repetitive tasks or to combine smaller tasks into **scripts**, which helps the user work faster are more effective. 

Using the Linux/Unix shell is fundamental for a large number of advanced computing tasks, including in HPC (high-performance computing). 

In addition: 

- Most HPC centers supercomputers run some flavour of Linux.
- It is stable and reliable
- Customizable
- Runs on any hardware
- Strong community
- Many flavours are open source and free
- Lots of applications
- Lightweight

While the use of Linux on desktop is only 2-3%, the vast majority of web servers (>96%), most mobile devices (Android is based on the Linux kernel), and all supercomputers on the <a href="https://en.wikipedia.org/wiki/TOP500" target="_blank">Top500</a> list run Linux.

For all of these reasons, and many more, it is a good idea to be more proficient in Linux. This course aims to help you with that. 

## More information 

There is much more information about <a href="https://en.wikipedia.org/wiki/Linux" target="_blank">Linux on Wikipedia</a>.

Some pages with guides and/or cheat sheets: 

- <a href="https://linuxhandbook.com/" target="_blank">The Linux Handbook</a>
- <a href="https://www.geeksforgeeks.org/linux-tutorial/" target="_blanks">https://www.geeksforgeeks.org/linux-tutorial/</a>
- <a href="https://itsfoss.com/free-linux-training-courses/" target="_blank">14 Free Training Courses to Learn Linux Online</a>
- <a href="https://tldp.org/LDP/intro-linux/intro-linux.pdf">Introduction to Linux - A Hands on Guide</a>
- <a href="https://cloudacademy.com/course/linux-fundmentals-1346/the-linux-directory-structure/" target="_blank">Linux Fundamentals</a>
- <a href="https://www.digitalocean.com/community/tutorials/linux-commands" target="_blank">Top 50+ Linux Commands You MUST Know</a>
 
