# Linux terminology

This section will give an overview of some of the most common terminology of Linux, as it may not be familiar to someone coming from i.e. Windows. It is, however, useful to know the meaning of some of the terms you will often see when searching for information about Linux or anything done on a Linux system. 

For a more detailed list of Linux terminology, there is a link to a <a href="https://www.miralishahidi.ir/resources/Linux%20Terminology%20Glossary.pdf" target="_blanket">Glossary of Linux Terms</a>. 

## Linux

While we usually think of Linux as an operating system, that is not strictly true; Linux is a free and open-source **kernel** developed by Linus Torvalds in 1991.

## Kernel

‘Kernels’ are at the core of every Operating System (OS). 

!!! NOTE 

    A kernel manages your system's hardware, as well as all the programs on your computer. 

    When, for instance, you press a key on your keyboard or use your mouse to click a button on the screen, this information gets sent through the kernel. It will then communicate with the operating system, to use the data as input and to show the output using the hardware (in this case the monitor). 

**Linux**: the base Linux kernel is open-source. A large number of [distributions](#distributions_distros) use this core. They then modify it to lesser or greater extent, suiting their particular goals.

The Linux kernel: 
- is the core component of the Linux OS
- is open source and actively developed by a large community
- manages hardware resources
- handles communication between software and hardware
- is in charge of 
    - device drivers
    - process management
    - memory management
    - other low-level system operations 

## Distributions (distros)

!!! NOTE 

    Different versions of Linux are called distributions or "distros". 

There are a large number of Linux distributions, as anyone can create their own Linux distro. It is thus important to check at least the most popular distros if you are considering to switch to another operating system. Some are easier to use than others. 

Examples of popular Linux distros are: Ubuntu, Debian, Fedora, CentOS, Slackware, Gentoo, Arch, Mint, and many others. 

!! NOTE

    Many distros can be downloaded and put on a bootable USB, so you can try them out before deciding.

Any operating system that uses the Linux kernel is called a Linux distribution ("distro"). The reason for that name comes from <u>sharing</u>, or <u>distributing</u>  the Linux OS for free.

Aside from distributions, developers make customized versions of the various "mainstream" Linux distributions. These are called <u>remixes</u>, flavours, and <u>spins</u>. Often the differences are choices of packages, desktop environments, etc. There is no hard difference between calling the customized versions remixes, flavours, or spins - it is mainly a choice. 

A distro is a complete operating system, including 
- the Linux kernel
- software packages
- various tools and utilities

The different spins/flavours of that distro could have 
- different package managers
- desktop environments
- various other features.

!!! Example "Example: Ubuntu"

    The <u>distro</u> Ubuntu has several **flavors**: Xubuntu, Lubuntu, Kubuntu, etc. each which  has a different desktop environment. 

!!! Example "Example: "Fedora"

    The <u>distro</u> Fedora uses the expression **spins** for its derivatives. 

## Desktop environments

To make it easier for users to work on their computer, many operating systems have a desktop that offers a graphical interface manage the system. Windows and macOS are common examples. Linux also has (optional) desktop(s), but things are done a little different. 

Linux offers a great many desktops, which are called "desktop environments". The vast majority of those are available to install for free. 

Desktop environments (usually) come with a program called a "window manager", as well as apps and widgets that, combined with the window manager, makes for a better user interface that can be further customized. 

!!! Note

    Popular desktop environments are GNOME, KDE Plasma, XFCE, Pantheon, LXDE, and many more.

## Window managers 

Window managers:  
- are programs controlling placement and movement of windows on your screen
- usually work together with desktop environments
- can also be used separately on your Linux machine
- are lightweight and can offer better performance than desktop environments
    - do not ship with unnecessary apps and widget (you even have to install menu and compositor if you go with just a window manager)
- can be complicated to set up for non-technical users, since you need to install everything extra yourself

!!! Note 

    - Some of the popular window managers are: i3wm, bspwm, awesome, Fluxbox
    - KDE Plasma and GNOME desktops use the KWin and Mutter window managers "under the hood"
    - "GNU Network Object Model Environment (GNOME)" is a desktop environment used by several Linux distros. It is quite similar to the Windows desktop and can be a good choice if you are changing from that OS

## Commands

The prompts that you type on the terminal are called "commands". The terminal is also commonly called the "command line" or the "command line interface" (CLI).

There are several applications that can be used to access the command line, so it will vary how it looks, but it is usually a simple window (commonly white or green on black background or black on white background). 

![Terminal](../images/terminal.png){: style="width: 350px; float: left;"}

Using commands on a command line interface is something many people find the most intimidating thing about Linux. However, while the command line is an integral part of using Linux, and some actions may be faster or more direct when done on the command line, most things can actually be done through a Graphical User Interface (GUI). 

## Command line interface (CLI), terminal 

The terminal, console, or "command line interface" (often abbreviated "CLI") is a text.based interface which is often the primary way to interact with Linux. 

The terminal is where you enter your ["commands"](#commands). It is usually very straightforward and simple, but you can also choose to use a terminal emulator which will give you a more user-friendly interface.

It is a program that is used to control your operating system's ["shell"](#shell). Briefly; a shell is a text-based (or graphical interface) through which the user interact with the desktop. 

!!! NOTE 

    The Linux terminal is similar to "Command Prompt" on Windows. It is used by the "super user" or "administrator" to control and manage the system efficiently.

    It can be used to configure settings, for scripting, directly controlling the system, as well as giving various other commands to any program on the system. 

While other operating systems like Windows once regularly used something like a terminal, it is now more seldom used except for some administrative management. On Linux, however, the terminal is still very much used. This may surprise some, but there are several good reasons: 

- The command line is fast: The CLI is usually much faster than using a GUI, and command-line programs will also start faster that graphical programs due to less overhead. 
-  Many programming tools use the command line: compilers, interpreters, debuggers all run on the command line. Yes, there are often a graphical IDE you can install, but that is just a wrapper for the command line program. 
- The command line works everywhere: it is easy to use remotely through SSH, for installing and maintaining servers, you can use it without starting a graphical interface, which gives less overhead and makes it faster and more efficient
-  You can script command line programs: this is a big advantage; you can avoid many repetitive operations when using a script
    - Example: renaming, copying, or moving many files through a graphical file manager can be a hassle. On the command line you can script it. For instance, copying all your .dat files to a directory could be done like this: <code>cp *.dat /mydir</code>
    - You can also use scripting for more complicated tasks. 
    - Some of the most commonly used scripting languages are the shell, perl, and Python.

## Root, user 

All Linux operating systems have a built-in system of user roles, where each user has a specific role, with varying levels of permissions. 

Some of the common roles are:
- user: nothing more, nothing less. The user can normally do what they want in their own home directory and perhaps a few other directories where they have been given permission to work. A user cannot install anything to the system outside of these directories where they have permission, and also cannot change most setup files (other than those affecting only themself).
- root: The root user or root account has administrative priviliges; complete access to all configurations, commands, and files in the system. Other words for root is **superuser** or **administrator**, though **root** is the most common term on Linux. 

!!! NOTE 

    root refers to both **the root directory** and **the root user**. 

    The root directory is the top level/parent directory containing all files and folders of the system. It is designated with a "/", and this is how you can denote it in your commands. 

## Package manager 

On Linux, the programs you install are often referred to as "packages". Commonly, they are installed on the command line. A "package manager" is a tool that gives you a graphical interface to help you find new packages, install, update, and sometimes even configure them.

On Linux, most **apps** are distributed as packages and are available in the official repositories of your distribution. You can also add third-party repositories with a package manager if you want access to even more packages. 

There are several different package managers available for the different Linux distros. These are some of the popular ones:
- APT: used by Debian and Ubuntu-based distributions. 
- RPM: used by Fedora, CentOS, and RHEL.
- pacman: used by Arch Linux and its derivatives. 
- yum/dnf: used by Red Hat-based distributions. 

## Source and binary packages 

A ‘binary’ file isn’t composed of regular text, but rather is made up of computer code. In many cases, binary files on Linux are executable, much like Windows .exe files. In other words, they can be run in order to perform some task or functionality.

A package in Linux refers to an archive that contains the files necessary for the execution or installation of a program. Software on Linux is usually distributed as packages and there are two types of packages available to the users: source and binary packages.

Source packages contain the source code of a program that a user has to manually compile and install to run the software. A binary package, on the other hand, contains prebuilt and pre-compiled executables for the software.

## Repositories

Software repositories are remote servers that store a collection of packages along with the related metadata. Every Linux distro either has its own set of repositories or uses repositories of its parent distro to provide software to the users.

## Open Source

Open Source is the freely available software allowing users to view, modify, and distribute its source code. Linux is an open-source operating system, which means its source code is accessible to the public, fostering collaboration, transparency, and community-driven development. Open-source software encourages innovation, flexibility, and customization, and it has played a significant role in the growth and popularity of Linux.

## Process

Every program you launch on your system runs as a collection of processes in the background. A process is the fundamental instance of a running program that does the computation on your computer.

The web browser you just opened to browse the internet launches a process, or a set of processes to help you interact with it and browse the internet. Similarly, your system's file manager, terminal, media player, and every other program depends on processes to produce the output.

In Linux, a Process refers to a running instance of a program or command. Each process has its unique process ID (PID) and associated system resources, such as memory, file descriptors, and execution context. Linux provides robust process management capabilities, allowing users to start, terminate, and monitor processes, control their execution, and manage system resources efficiently.

## Shells, shell scripting

A Shell is a command-line interpreter that provides an interface for users to interact with the operating system. Linux offers various shells, such as Bash (Bourne Again Shell), C Shell, Korn Shell, and Zsh. Shells allow users to execute commands, run scripts, and perform system operations. They provide features like command history, input/output redirection, variables, and control structures, enhancing the power and flexibility of the command-line interface.

Bash (Bourne Again Shell)

Bash, or Bourne Again Shell, is a popular Unix shell and command language used in Linux distributions. It provides a command-line interface for interacting with the operating system and executing commands. Bash offers features like command history, tab completion, scripting capabilities, and extensive support for shell scripting, making it a powerful tool for system administration and automation.

Shells (Bash, Zsh, etc.)

As mentioned before, a shell is an interface that helps you interact with your system. It can either be a command-line interface like the terminal or a graphical one like the GNOME Shell. A shell also acts as a command interpreter for any command you enter in the terminal.

You can install several different shells on Linux. Examples include Bash, Zsh, Fish, sh, Ksh, etc. Each shell has the same role: helping the user and processes interact with other processes on the system.

Shell Scripting

When you write a bunch of Linux commands and wrap them up together in a single file, the resulting file is called a "shell script." Shell scripting is the process of writing scripts using Linux commands, which are then interpreted by the shell installed on your system. Batch scripts are the Windows equivalent to shell scripts on Linux.

The most popular form of shell scripting is Bash scripting, which refers to writing and executing scripts using the Bash shell. Shell scripts are a powerful way to automate tasks on your Linux machine; they make computing a lot simpler and fun for the users.
There's a Lot More Left to Learn About Linux!

Knowing the terms and jargon brings you a step closer to your goal of becoming a Linux power user. To be able to use Linux to its full potential, you should be well-versed with the command line and know how to troubleshoot the operating system to make it work for you, and not the other way around.

## File system

A File System is a method or structure the operating system uses to organize and store files on disk or other storage devices. Linux supports different file systems, including ext4, XFS, Btrfs, and NTFS. Each file system has features, performance characteristics, and compatibility with other operating systems.

## GNU

The ‘GNU’ project is a collection of free software that includes some of Linux’s most popular applications. It’s developed by the same people behind the General Public License (GPL), which is a big hit in the open source world. Simply put, you can do almost anything you want with software published under the GPL license, including modifying and sharing it (under the same license).

GNU, a recursive acronym for "GNU's Not Unix," is a collection of open-source tools that anyone can use for free to develop their own apps and operating systems. The GNU Project, founded by Richard Stallman, aims at developing and distributing software for free and provides every developer with open-source tools to do the same.

The Linux kernel is licensed under GNU's GPL (General Public License) and is thus known as GNU/Linux. Any operating system developed using the open-source GNU tools and the Linux kernel falls under the category of Linux distributions. But what are distributions, you might ask?

GNU (GNU's Not Unix)

GNU is a free and open-source project initiated by Richard Stallman to create a complete Unix-like operating system. The GNU project provides various essential software components and utilities, including the GNU Compiler Collection (GCC), GNU Bash, GNU Core Utilities, and many others. Linux distributions often combine the Linux kernel with GNU software to create a complete operating system.

## Advanced

### Bootloader, grub

A bootloader is a program responsible for booting your computer. Usually, the operating system and its data are stored in non-volatile storage disks, HDDs for example. The bootloader helps load the correct operating system during boot time and adds initial processes to the memory.

GRUB is one of the most used bootloaders when dual-booting Windows with Linux. Other examples include LILO, BURG, and Syslinux.

## Encryption

Encryption converts data into a secure and unreadable form to protect it from unauthorized access. Linux provides encryption tools and algorithms to secure data at rest and during transmission. Encrypted file systems, disk encryption, and network encryption are commonly used in Linux to safeguard sensitive information and ensure data privacy.

## IP Address (Internet Protocol Address)

An IP Address is a unique numerical identifier assigned to each device connected to a network. In Linux, IP addresses are used for network configuration, routing, and device communication. IP addresses can be assigned manually (static) or dynamically (through DHCP) and play a crucial role in establishing network connections and enabling internet connectivity.

## Journaling File System

A Journaling File System is a type of file system that maintains a log or journal of file system changes to improve reliability and reduce the risk of data loss or corruption in the event of a system failure or power outage. Linux supports various journaling file systems, including ext4, XFS, and JFS. These file systems provide built-in mechanisms to recover file system integrity quickly and minimize the time required for file system checks and repairs.

## Kernel Panic

Kernel Panic is a critical error condition in the Linux kernel where it cannot continue operating safely. It typically occurs due to severe software or hardware issues, such as a corrupted kernel, hardware failure, or incompatible drivers. When a kernel panic happens, the system halts, displays an error message, and requires a manual reboot. Kernel panics are rare but need investigation to identify and resolve the underlying cause.

## LAMP Stack

LAMP Stack is an acronym for a software stack commonly used for web development, consisting of Linux as the operating system, Apache as the web server, MySQL or MariaDB as the database management system, and PHP, Perl, or Python as the scripting language. The LAMP stack provides a robust and open-source foundation for hosting dynamic web applications and websites.

## Mount

Mounting refers to attaching a file system to a specific directory location within the Linux file hierarchy, making the contents of the file system accessible to the operating system and its users. By mounting a device or network share, Linux treats it as part of the overall file system, allowing users to access and manipulate files and directories within that mounted location.

## Query Language

A Query Language is a specialized language to retrieve and manipulate database data. In Linux, Structured Query Language (SQL) is commonly used for managing and querying relational databases such as MySQL or PostgreSQL. SQL allows users to perform operations like data retrieval, insertion, deletion, and modification, making it an essential skill for working with databases in Linux environments.

## TCP/IP (Transmission Control Protocol/Internet Protocol)

TCP/IP is the fundamental communication protocol suite used for network communication in Linux and the internet. It provides a reliable and standardized set of protocols that enable data transmission between devices. TCP ensures the reliable delivery of data, while IP handles the addressing and routing of data packets. TCP/IP is the backbone of network communication, allowing devices to communicate and exchange data across diverse networks.

## UEFI (Unified Extensible Firmware Interface)

UEFI is a modern firmware interface that replaces the traditional BIOS (Basic Input/Output System) in newer computers. UEFI provides advanced boot and system initialization capabilities, supports large disk sizes, and offers additional security features. Linux systems are compatible with UEFI and utilize it for system booting and hardware initialization.

## Virtualization

Virtualization in Linux involves running multiple virtual instances of operating systems or applications on a single physical computer. It enables efficient resource utilization, improved scalability, and isolating different environments. Linux provides robust virtualization technologies such as Kernel-based Virtual Machine (KVM), Xen, and containerization platforms like Docker and LXC.
