# Introduction to Linux

- Welcome page and syllabus: <a href="https://hpc2n.github.io/intro-linux/index.html">https://hpc2n.github.io/intro-linux/index.html</a>
    - Also link at the House symbol at the top of the page. 

!!! Admonition "Learning outcomes for this course"

    - What is Linux and why should I use it?
    - Learn about the command line interface (CLI)
    - Navigate the file system 
        - ls
        - mkdir
        - cd
        - rm
        - cp
        - mv
        - redirection
        - pipes
        - etc.  
    - Data handling 
        - compressing
        - archiving
        - file transfer
        - patterns
        - etc.  
    - Hints and tricks of Linux

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

!!! info 
  
    There are several shells, which has somewhat different properties: 

    - The Bourne Shell (sh)
    - The GNU Bourne-Again shell (bash)
    - The C shell (csh)
    - The Korn Shell (ksh) 
    - The Z Shell (zsh) 

<details>

  <summary>Overview</summary>
  
     | Shell | Complete path-name | Prompt for root user | Prompt for non root user |
     | ----- | ------------------ | -------------------- | ------------------------ |  
     | Bourne shell (sh) | /bin/sh and /sbin/sh | # | $ | 

</details>

Shell 	Complete path-name 	Prompt for root user 	Prompt for non root user
Bourne shell (sh) 	/bin/sh and /sbin/sh 	# 	$
GNU Bourne-Again shell (bash) 	/bin/bash 	bash-VersionNumber# 	bash-VersionNumber$
C shell (csh) 	/bin/csh 	# 	%
Korn shell (ksh) 	/bin/ksh 	# 	$
Z Shell (zsh) 	/bin/zsh 	<hostname># 	<hostname>%

## Why Linux/Unix

The Linux/Unix shell has been around longer than most of its users have been alive. It has survived because it’s a powerful tool that allows users to perform complex and powerful tasks, often with just a few keystrokes or lines of code. It helps users automate repetitive tasks and easily combine smaller tasks into larger, more powerful workflows.

Use of the shell is fundamental to a wide range of advanced computing tasks, including high-performance computing. These lessons will introduce you to this powerful tool.

- Most HPC centers supercomputers run some flavour of Linux.
- It is stable and reliable
- Customizable
- Runs on any hardware
- Strong community
- Many flavours are open source and free
- Lots of applications
- Lightweight

While the use of Linux on desktop is only 2-3%, the vast majority of web servers (>96%), most mobile devices (Android is based on the Linux kernel), and all supercomputers on the <a href="https://en.wikipedia.org/wiki/TOP500" target="_blank">Top500</a> list run Linux.

## More information 

There is much more information about <a href="https://en.wikipedia.org/wiki/Linux" target="_blank">Linux on Wikipedia</a>.

Some pages with guides and/or cheat sheets: 

- <a href="https://linuxhandbook.com/" target="_blank">The Linux Handbook</a>
- <a href="https://www.geeksforgeeks.org/linux-tutorial/" target="_blanks">https://www.geeksforgeeks.org/linux-tutorial/</a>
- <a href="https://itsfoss.com/free-linux-training-courses/" target="_blank">14 Free Training Courses to Learn Linux Online</a>
- <a href="https://tldp.org/LDP/intro-linux/intro-linux.pdf">Introduction to Linux - A Hands on Guide</a>
- <a href="https://cloudacademy.com/course/linux-fundmentals-1346/the-linux-directory-structure/" target="_blank">Linux Fundamentals</a>
- <a href="https://www.digitalocean.com/community/tutorials/linux-commands" target="_blank">Top 50+ Linux Commands You MUST Know</a>
 
