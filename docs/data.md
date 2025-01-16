# Data Handling

This section will briefly cover compressing/decompressing files/directories, transferring files, and logging in.  

!!! note "Objectives" 

    **Questions**

    - How do I compress and decompress files and directories under Linux?
    - How do I create an archive (tarball)?
    - How do I transfer and sync files?
    - How do I connect with SSH? 

    **Learning objectives** 

    - Learn about compressing and decompressing files and directories with ``gzip``
    - Learn about archiving (creating a tarball) with ``tar``
    - Learn about transferring and syncing files
    - Learn about connectin gwith SSH 

## Compressing and decompressing 

Compressing files are done with utilities like <a href="http://www.gnu.org/software/gzip/gzip.html" target="_blank">gzip</a>, <a href="http://www.bzip.org/" target="_blank">bzip2</a>, or <a href="http://en.wikipedia.org/wiki/ZIP_%28file_format%29" target="_blank">zip</a>. 

!!! Example "Compressing a file with gzip"

    ```bash
    gzip FILE
    ```

    This results in FILE.gz

!!! Example "Decompressing a file with gzip"

    ```bash
    gunzip FILE.gz
    ```

    You now again have FILE 


## Archiving

Archiving is generally done with <a href="http://www.gnu.org/software/tar/tar.html" target="_blank">tar</a>. 

A **tarball** is a commonly used name to refer to an archive file in the tar (Tape Archive) format. 

A tarball can be compressed with something like gzip or bzip2. 

<div>
```bash
tar [-options] <name of the tar archive> [files or directories which to add into archive]

Basic options:

    -c, --create — create a new archive;
    -a, --auto-compress — additionally compress the archive with a compressor which will be automatically determined by the file name extension of the archive. If the archive's name ends with *.tar.gz then use gzip, if *.tar.xz then use xz, *.tar.zst for Zstandard etc.;
    -r, --append — append files to the end of an archive;
    -x, --extract, --get — extract files from an archive;
    -f, --file — specify the archive's name;
    -t, --list — show a list of files and folders in the archive;
    -v, --verbose — show a list of processed files.
```
</div> 

!!! Hint 

    Code-along! You can either download the tarball <code>temp.tar.gz</code> to play with (right-click and save): <a href="../temp.tar.gz">temp.tar.gz</a> or use the exercises.tar.gz tarball. 

**Here follows some examples:**  

!!! Example "Generate a tarball"

    ```bash
    tar -cvf DIRECTORY.tar DIRECTORY
    ```

!!! Example "Extracting the files from a tarball"

    ```bash
    tar -xvf DIRECTORY.tar
    ```

!!! Example "Generate a tarball and compress it with gzip"

    ```bash
    tar -zcvf DIRECTORY.tar.gz DIRECTORY
    ```

!!! Example "Uncompressing and extracting files from a tarball" 

    ```bash
    tar -zxvf DIRECTORY.tar.gz
    ```

More information can be found in HPC2N's documentation's <a href="https://docs.hpc2n.umu.se/documentation/filesystems/#archiving__and__compressing" target="_blank">Archiving and compressing section</a>. 

## File transfer and syncing 

There are several possible ways to transfer files and data to and from Linux systems: scp, sftp, rsync...

!!! Warning 

    FTP is generally not permitted due to security problems! 

### SCP

SCP (Secure CoPy) is a simple way of transferring files between two machines that use the SSH (Secure SHell) protocol. 

!!! Example "From local system to a remote system"

    ```bash
    $ scp sourcefilename user@hostname:somedir/destfilename
    ```

!!! Example "From a remote system to a local system"

    ```bash
    $ scp user@hostname:somedir/sourcefilename destfilename
    ```

### SFTP

SFTP (SSH File Transfer Protocol or sometimes called Secure File Transfer Protocol) is a network protocol that provides file transfer over a reliable data stream.

!!! Example "From a local system to a remote system"

    This example was made with the remote system "Kebnekaise" belonging to HPC2N. 

    ```bash
    enterprise-d [~]$ sftp user@kebnekaise.hpc2n.umu.se
    Connecting to kebnekaise.hpc2n.umu.se...
    user@kebnekaise.hpc2n.umu.se's password:
    sftp> put file.c C/file.c
    Uploading file.c to /home/u/user/C/file.c
    file.c                          100%    1    0.0KB/s   00:00
    sftp> put -P irf.png pic/
    Uploading irf.png to /home/u/user/pic/irf.png
    irf.png                         100% 2100    2.1KB/s   00:00
    sftp>
    ```

!!! Example "From a remote system to a local system"

    ```bash
    sftp> get file2.c C/file2.c
    Fetching /home/u/user/file2.c to C/file2.c
    /home/u/user/file.txt  100%  1  0.1KB/s 00:00    
    sftp> get -P file3.c C/
    Fetching /home/u/user/file3.c to C/file3.c
    /home/u/user/file.txt  100%  1  0.4KB/s 00:00    
    sftp> exit
    enterprise-d [~]$ 
    ```

### rsync

rsync is a utility for efficiently transferring and synchronizing files between a computer and a storage drive and across networked computers by comparing the modification times and sizes of files.

!!! Example "Recursively sync files from one remote directory to a local directory. Also preserve symbolic links and time stamps, and allows resume of partially transferred files on restart" 

    ```bash
    rsync -rlpt username@remote_host:sourcedir/ /path/to/localdir
    ```

!!! Example "Recursively sync a local directory to a remote destination directory, preserving owners, permission, modification times, and symbolic links"

    ```bash
    rsync -a /path/to/localdir/ username@remote_host:destination_directory
    ```

Much more information and examples can be found in the HPC2N documentation's <a href="https://docs.hpc2n.umu.se/documentation/filesystems/#file__transfer" target="_blank">File transfer section</a>. 

## Connecting with ssh

The <code>ssh</code> command is used for connecting to a remote computer.

Some useful examples:

!!! Example "Connecting to a compute cluster called Kebnekaise"
  
    ```bash 
    ssh username@kebnekaise.hpc2n.umu.se
    ```

!!! Example "Connecting to Kebnekaise and enabling graphical display"

    ```bash
    ssh -Y username@kebnekaise.hpc2n.umu.se
    ```

    **Note** that you need to have an X11 server like Xming or Cygwin on Windows, XQuartz on macOS (included on Linux) to open a graphical display. 

!!! Tip 

    If you are using a graphical display, then we are **strongly** recommending ThinLinc. There is information about connecting with ThinLinc at most Swedish HPC centres. Here is the <a href="https://docs.hpc2n.umu.se/tutorials/connections/#thinlinc" target="_blank">information from HPC2N</a>.  

!!! note "Keypoints" 

    - Files and directories can be compressed with ``zip``, ``gzip`` and other programs on Linux
    - Creating a "tarball" with ``tar`` is often very useful, since this means you can transfer just one file instead of many. It can be combined with compressing. 
    - ``sftp`` and ``rsync`` are useful for transferring and syncing your files between different computers 
    - ``SSH`` is a way to connect to a remote computer from the command line 

