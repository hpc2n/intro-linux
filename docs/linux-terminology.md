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

**Linux**: the base Linux kernel is open-source. A large number of distributions (distros) use this core. They then modify it to lesser or greater extent, suiting their particular goals.

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

!!! NOTE

    Many distros can be downloaded and put on a bootable USB, so you can try them out before deciding.

Any operating system that uses the Linux kernel is called a Linux distribution ("distro"). The reason for that name comes from <u>sharing</u>, or <u>distributing</u>  the Linux OS (usually for free).

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

![Terminal](images/terminal.png){: style="width: 380px; float: left; padding: 3px;"}

Using commands on a command line interface is something many people find to be the most intimidating thing about Linux. 

However, while the command line is an integral part of using Linux, and some actions may be faster or more direct when done on the command line, most things can actually be done through a Graphical User Interface (GUI). 
<br><br style="clear: both;">

## Command line interface (CLI), terminal 

The terminal, console, or "command line interface" (often abbreviated "CLI") is a text.based interface which is often the primary way to interact with Linux. 

The terminal is where you enter your ["commands"](#commands). It is usually very straightforward and simple, but you can also choose to use a terminal emulator which will give you a more user-friendly interface.

It is a program that is used to control your operating system's ["shell"](#shells). Briefly; a shell is a text-based (or graphical interface) through which the user interact with the desktop. 

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

- Source packages: these contain the source code of a program: A user must manually compile and install it to run the software. 
- Binary packages: these contain prebuilt and pre-compiled executables for the software.

## Repositories

Collections of packages and their metadata can be found in **software repositories** on remote servers. Most Linux distros has their own set of repositories or else they use the repositories of their parent distro. 

## Open Source

Wikipedia defines Open Source as: 

Source code that is made freely available for possible modification and redistribution. Products include permission to use the source code, design documents, or content of the product. The open-source model is a decentralized software development model that encourages open collaboration. A main principle of open-source software development is peer production, with products such as source code, blueprints, and documentation freely available to the public. The open-source movement in software began as a response to the limitations of proprietary code. 

Open source has played a significant role in the growth and popularity of Linux.

## Process

Each program you start on your system will run a number of processes in the background. A <code>process</code> is the instance of a running program which does the computation. It is the allocation of memory for the program as well as a thread for execution. 

!!! Example "Examples that launches a process or a set of processes"

    - You start a program, maybe a game
    - You start your web browser
    - You open a new tab in your web browser
    - You run a command in a terminal 

All programs depends on processes to run and produce output. 

!!! NOTE

    - In Linux a <code>process</code> refers to a running instance of a program or command. 
    - Each process has a unique process ID (PID)
    - Each process also has associated system resources (memory, file descriptors, etc)
    - There are robust process management capabilities. Users can start, terminate, monitor processes, control their execution, manage system resources

## Shells

A Shell is a command-line interpreter which provides an interface for users to interact with the operating system. 

There are several different shells: Bash (Bourne Again Shell), C Shell, Korn Shell, and Zsh, etc. 

Shells allow users to: 
- execute commands
- run scripts
- perform system operations

Shells provide features like: 
- command history
- input/output redirection
- variables
- control structures

The two main "families" of shells are C-shell and Bourne shell.  

- **csh**: The C shell (csh or the improved version, tcsh) is a Unix shell created by Bill Joy while he was a graduate student at University of California, Berkeley in the late 1970s. The C shell is a command processor which is typically run in a text window, allowing the user to type and execute commands. The C shell can also read commands from a file, called a script. The style of the shell script language resembles C. 
- **tcsh**: a Unix shell based on and backward compatible with the C shell (csh). It is essentially the C shell with programmable command-line completion, command-line editing, and a few other features. Unlike the other common shells, functions cannot be defined in a tcsh script and the user must use aliases instead (as in csh).
- **sh**: The Bourne shell (sh) is a shell command-line interpreter for computer operating systems, developed by Stephen Bourne at Bell Labs. It is used as an interactive command interpreter, but was also intended as a scripting language and contains most of the features that are commonly considered to produce structured programs. 
- **bash**: (Bourne Again Shell). It provides a command-line interface for interacting with the operating system and executing commands. Bash offers features like command history, tab completion, scripting capabilities, and extensive support for shell scripting, making it a powerful tool for system administration and automation.
- **ksh**: KornShell. It is a Unix shell which was developed by David Korn at Bell Labs in the early 1980s. KornShell is backward-compatible with the Bourne shell and includes many features of the C shell, inspired by the requests of Bell Labs users. 
- **zsh**: The Z shell (Zsh) is a Unix shell that can be used as an interactive login shell and as a command interpreter for shell scripting. Zsh is an extended Bourne shell with many improvements, including some features of Bash, ksh, and tcsh. 

Bash and tcsh are probably the most "popular" of the shells. 

### Shell Scripting

A shell script is a computer program designed to be run by a Unix shell, a command-line interpreter.

When you write several Linux commands and place them together in a single file, the resulting file is called a "shell script." 

Shell scripting is the process of writing scripts using Linux commands, which are then interpreted by the shell installed on your system. 

!!! Note 

    The Windows equivalent to shell scripts are "batch scripts". Do NOT confuse these with the batch scripts used by batch systems! 

The most popular shell scripting language is Bash scripting - this means writing and executing scripts using the Bash shell. 

## File system

A file system provides a data storage service that allows applications to share mass storage. Without a file system, applications could access the storage in incompatible ways that lead to resource contention, data corruption and data loss.

A File System is a method or structure the operating system uses to organize and store files on disk or other storage devices. 

!!! NOTE

    Linux supports several different file systems, including ext4, XFS, Btrfs, and NTFS. These file systems has different features, performance characteristics, and compatibility with other operating systems. 

## GNU

GNU is an extensive collection of free software, which can be used as an operating system or can be used in parts with other operating systems. The use of the completed GNU tools led to the family of operating systems popularly known as Linux. Most of GNU is licensed under the GNU Project's own General Public License.i

GNU is a recursive acronym for "GNU's Not Unix".

The Linux kernel is licensed under GNU's GPL (General Public License) and is thus known as GNU/Linux. Any operating system developed using the open-source GNU tools and the Linux kernel falls under the category of Linux distributions. 

## Advanced

There are many other terms which you may come across when reading about Linux. These are a few of them. 

### Bootloader, grub

!!! NOTE

    A bootloader is a program responsible for booting your computer. 

When a computer is turned off, its software - including the operating systems, application code, and data - remains stored on non-volatile memory. 

The computer normally does not have an operating system or its loader in random-access memory (RAM) when it is powered on. 

First the computer executes a small program (the boot loader) stored in read-only memory (ROM) along with some needed data, to initialize RAM, to access the nonvolatile device (storage system like HDD) or devices from which the operating system programs and data can be loaded into RAM. 

GRUB is one of the most used bootloaders, including when dual-booting Windows with Linux. Other examples include LILO, BURG, and Syslinux.

## Encryption

Encryption scrambles data into a secure and unreadable form so it can only be accessed by authorized parties. 

Linux provides encryption to secure data, both during transmission and on the system. This is done through encrypted file systems, disk encryption, and network encryption. 

## IP Address (Internet Protocol Address)

(Much of this section was taken from Wikipedia) 

An Internet Protocol address (IP address) is a unique numerical label that is assigned to every device that is connected to a network. 

IP addresses in Linux are used for: 
- network configuration
- routing
- device communication

IP addresses can either be assigned manually (static IP address) or dynamically (DHCP). They are crucially important in establishing network connections and enabling internet connectivity.

Two versions of the Internet Protocol are in common use on the Internet today:
- The original version of the Internet Protocol (deployed in 1983 in the ARPANET) is Internet Protocol version 4 (IPv4). 
    - An IPv4 address has a size of 32 bits, which limits the address space to 4294967296 (232) addresses. Some addresses are reserved for special purposes such as private networks (≈18 million addresses) and multicast addressing (≈270 million addresses).
    - IPv4 addresses are usually represented in dot-decimal notation, consisting of four decimal numbers, each ranging from 0 to 255, separated by dots, e.g., 192.0.2.1. Each part represents a group of 8 bits (an octet) of the address.  
- The Internet Protocol Version 6 (IPv6) was developed in 1995. IPv6 technology was in various testing stages until the mid-2000s when commercial production deployment commenced. 
    - In IPv6, the address size was increased from 32 bits in IPv4 to 128 bits, thus providing up to 2128 (approximately 3.403×1038) addresses. This is deemed sufficient for the foreseeable future. 

## Kernel Panic

Kernel Panic is a critical error condition in the Linux kernel. When this happens it cannot continue operating safely. The reason for it happening is usually severe software or hardware issues, such as: a corrupted kernel, hardware failure, or incompatible drivers. 

The system halts when there is a kernel panic. An error message is displayed, and a manual reboot needs to be done. 

Kernel panics happen quite rarely, but are something that gives cause for concernt and needs to be investigated so the cause can be found and resolved. 

## Mount

Mounting means to attach a file system to a specific directory location in the Linux file hierarchy. This causes the contents of the file system to become accessible to the operating system and the users. 

When a device (local or network) has been mounted, Linux will behave as if it is a part of the file system. That means users can access and manipulate directories and files of that location. 

## TCP/IP (Transmission Control Protocol/Internet Protocol)

TCP/IP 
- is the fundamental communication protocol suite used for network communication in Linux and the internet. 
- provides a reliable and standardized set of protocols that enable data transmission between devices. 
- is the backbone of network communication, letting the devices talk to each other and exchange data. 

TCP ensures reliable delivery of data and IP handles addressing and routing of data packets. 

## UEFI (Unified Extensible Firmware Interface)

UEFI is
- a modern firmware interface
- replaces the traditional BIOS (Basic Input/Output System) 
- provides advanced boot and system initialization capabilities
- supports large disk sizes
- offers additional security features. 
- can be used by Linux systems for booting and initialization of hardware. 

