# More Linux terminology

This section lists some more of the most common terminology of Linux. 

For a more detailed list of Linux terminology, there is a link to a <a href="https://www.miralishahidi.ir/resources/Linux%20Terminology%20Glossary.pdf" target="_blanket">Glossary of Linux Terms</a>. 

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

