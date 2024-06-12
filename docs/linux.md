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

The terminal or command line interface is often the primary way to interact with Linux. 

The terminal is where you enter your ["commands"](#commands). It is usually very straightforward and simple, but you can also choose to use a terminal emulator which will give you a more user-friendly interface.

The terminal is a program used to control your operating system's shell. A shell is a text-based or graphical interface that you use to interact with your desktop. The Linux terminal is similar to Command Prompt on Windows and helps an administrator control and manage their system efficiently.

While other OSes have long moved on from using terminal emulators, the command line is still prevalent on Linux-based operating systems.

CLI, or Command-Line Interface, is a text-based interface for interacting with computer systems and executing commands. In Linux, the CLI is accessed through a terminal or console, allowing users to perform various operations, configure settings, and manage the system without a graphical user interface (GUI). The CLI provides flexibility, scripting capabilities, and direct control over the system.

- The Command Line Is Fast

A lot of Linux users love to claim that the Linux command line is faster than using a GUI. Command-line programs start faster than graphical ones because there's less overhead.

This is one reason that when Linux first debuted on PCs, distributions would default to the console environment. The less powerful PCs of the era would often struggle to run X, at least with the small amounts of RAM that desktop systems came equipped with. 

- Programming Tools Use the Command Line 

 Programmers have been the staunchest advocates of Linux because it has so many tools for them to get their work done: interpreters, compilers, and debuggers. And all of these tools run on the command line.

While you can call all of these from a graphical IDE, it's just a front end to a command line somewhere. 

- The Command Line Works Everywhere, Including on Servers

One big reason that the command line has survived on Linux systems is that it works just about everywhere. If X doesn't like your graphics card, a problem that was also more common on early Linux systems, you'll find yourself dumped at the console. This means you can fall back on the command line when you need to.

For this reason, it's popular to install Linux servers only with the command-line interface. This allows for more efficient server use. After all, there's no need for a GUI if no one's going to see it anyway.

Many admins prefer to log in remotely via SSH to manage their servers. This lower overhead allows Linux servers to run more efficiently than Windows servers. 

- Command-Line Programs Can Be Scripted

One big advantage of command-line programs over graphical ones is that programmers can automate them.

If you work with graphical programs such as file managers, you'll often run into repetitive operations like renaming files. If you have a lot of files, this can get tedious with a GUI file manager. The shell lets you use wildcards to generate a list of files.

If you wanted to copy all your text files to a directory, you'd use this line:

        
cp *.txt /example

    

You can also use scripting languages for more complicated tasks. For many years, the scripting language of choice was the shell. The advantage of the shell is that you can use the familiar programs that you've been using on the command line in your scripts.

While scripting languages like Perl and Python use libraries, it's also possible to use standard Linux programs if a library doesn't exist. 

- When Unix Was Developed, There Was No GUI

While Linux is not Unix, as it has no code from the system, its behavior is based on it, including its use of the command line. When Unix was developed at Bell Labs in the late '60s and early '70s, there was no such thing as a graphical user interface.

Most people submitted their programs on punch cards, while a lucky few were able to interact with the system using a terminal, like Unix's creators: Dennis Ritchie and Ken Thompson.

These terminals were either teletype machines or video terminals, which were just a screen and a keyboard. Both of these types of terminals just supported text, not graphics.

Command-line interfaces were natural for this type of terminal. The use of text terminals was also a major reason why Unix developers preferred short command names, as they were faster to type. 


## Root, user 

Linux OSs have a built-in system of user roles. Each user has a designated role, with varying levels of permissions. For example, if you’re a guest, you won’t be able to modify the OS’s core files.

A ‘root’ account, on the other hand, has full access to every command and file in the system. That is to say, if you’re a root user, you can do just about anything you want.

On Linux, root refers to two things: the root directory and the root user. The root directory is the parent directory that contains every file and folder on your system. You can use the wildcard "/" (forward slash) to denote the root directory in your commands.

On the other hand, the root user, also known as the superuser, or simply root, is the user that has all administrative privileges. The root user can view and edit any file, make changes to the system or other users, and even delete the whole directory hierarchy. Simply put, it is the Linux user with the highest level of control.

The root is the superuser or administrator account in Linux systems with complete control over the operating system and its resources. The root user has unrestricted access to system files, can perform administrative tasks, and can modify critical system configurations. However, using the root account sparingly and relying on regular user accounts with appropriate permissions for day-to-day operations is generally recommended to enhance system security.

## Package manager 

When it comes to Linux, you install ‘packages’ rather than programs. Typically, you’ll do this through the terminal. A ‘package manager’ is a tool that provides you with a graphical interface to help you find new packages, then install, update, and even configure them.

On Linux, apps are distributed in the form of packages and are available in the official repositories of your distribution. A package manager is a program used to manage packages on a Linux system. It allows you to add or delete packages from sources such as your distro's repositories. You can also add additional third-party repositories with a package manager if you want, however.

APT, RPM, and pacman are the three most popular package managers found on Linux distros. Debian and Ubuntu-based distributions use the APT package manager; Fedora, CentOS, and RHEL have the RPM package manager, whereas Arch Linux and its derivatives ship with pacman.

A Package Manager is a software tool used in Linux distributions to manage installing, removing, and updating software packages. Package managers automate resolving dependencies, retrieving packages from repositories, and handling package installations. Examples of popular package managers in Linux include apt (used by Debian-based distributions), yum/dnf (used by Red Hat-based distributions), and Pacman (used by Arch Linux).

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
