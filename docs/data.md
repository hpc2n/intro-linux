# Data Handling

This section will briefly cover compressing/decompressing files/directories, transferring files, and logging in.  

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

    Code-along! You can download the tarball <code>temp.tar.gz</code> to play with (right-click and save): <a href="../temp.tar.gz">temp.tar.gz</a>. 

**Here follows some examples: **  

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

    If you are using a graphical display, then we are **strongly** recommending ThinLinc.  

## More advanced topics

This section will look at finding patterns ([grep](#grep), [awk](#awk), [wild cards](#wild__cards), [regular expressions](#regular__expressions)) and [scripting](#scripting).  

### Finding patterns 

Here you will find descptions on how to search for files with specific patterns. 

!!! Hint 

    Try out some of these examples. You can use the contents of the tarball <a href="../patterns.tar.gz">patterns.tar.gz</a> to play with. Right-click and save to download, or right-click and copy the url, then do ``wget THE-URL-YOU-COPIED`` in a terminal window to download it there. Then do <code>tar -zxvf patterns.tar.gz</code> to unpack.  

#### grep 

This command searches for patterns in text files. FILE is the name of whatever file you want to look at. The file ``fil.txt`` is a good option here if you want to test. 

!!! Example "Find the pattern 'word' in FILE"

    ```bash
    grep 'word' FILE
    ```

!!! Example "Find the pattern 'word' recursively under the directory path/to/dir" 

    ```bash
    grep -rine 'word' path/to/dir
    ```

!!! Exercise "Try finding the pattern ``string`` in file.txt"

    Download <a href="https://raw.githubusercontent.com/hpc2n/intro-linux/main/docs/file.txt">file.txt</a> here (not the same as fil.txt above). 

#### awk 

This command finds patterns in a file and can perform arithmetic/string operations. 

!!! Example "Search for the pattern 'snow' in the file FILE and print out the first column"

    ```bash
    awk '/snow/ {print$1}' FILE
    ```

#### Wild cards

Wild cards are useful 'stand-ins' for one or more character or number, that you can use for instance when finding patterns or when removing/listing all files of a certain type. 

Wild cards are also called globbing patterns. 

- **?** represents a single character
- **\*** represents a string of characters (0 or more)
- **[ ]** represents a range
- **{ }** the terms are separated by commas and each term must be a wildcard or exact name
- **[!]**  matches any character that is NOT listed between the [ and ]. This is a logical NOT.
- **\** specifies an "escape" character, when using a subsequent special character. 

!!! Warning 

    You may need quotation marks as well around some wildcards. 

!!! Example "Some examples of use of wildcards"

    ```bash
    myfile?.txt
    ``` 

    This matches myfile0.txt, myfile1.txt,... for all letters between a-z and numbers between 0-9. Try with ``ls myfile?.txt``. 

    ```bash
    r*d
    ```

    This matches red, rad, ronald, ... anything starting with r and ending with d, including rd. 

    ```bash
    r[a,i,o]ck
    ```

    This matches rack, rick, rock.

    ```bash
    a[d-j]a
    ```

    This matches ada, afa, aja, ...  and any three letter word that starts with an a and ends with an a and has any character d to j in between. Try with ``ls a[d-j]a``. 
   
    ```bash
    [0-9]
    ``` 
  
    This matches a range of numbers from 0 to 9. 

    ```bash
    cp {*.dat,*.c,*.pdf} ~
    ```

    This specifies to copy any files ending in .dat, .c, and .pdf to the user's homedirectory. No spaces are allowed between the commas, etc. You could test it by creating a matched file in ``patterns`` directory with ``touch file.c`` and running the above command to see it only copies that one from the ``patterns`` directory. 

    ```bash
    rm thisfile[!8]*
    ```

    This will remove all files named thisfile*, except those that has an 8 at that position in it's name. Try running it in the ``patterns`` directory! Do ``ls`` before and after to see the change. Remember, you can always recreate the directory ``patterns`` by untar'ing it again.  


#### Regular Expressions

Regular Expressions are a type of globbing patterns that are used when you are working with text. 

Regular Expressions can be used with programs like grep, find and many others. 

!!! NOTE

    If your regular expressions does not do as you expect, you may need to use single quotation marks around the sentence and you may also have to use backslashes on every single special character.

Some common examples of regular expressions: 

- **.** matches any single character. Same as **?** in standard wildcard expressions. 
- **\\** is used as an "escape" character for a subsequent special character. 
- **.*** is used to match any string, equivalent to * in standard wildcards.
- ***** the proceeding item is matched zero or more times. ie. n* will match n, nn, nnnn, nnnnnnn but not na or any other character.
- **^** means "the beginning of the line". So "^a" means find a line starting with an "a".
- **\$** means "the end of the line". So "a$" means find a line ending with an "a".
- **[ ]** specifies a range. Same as for normal wildcards. This is an 'or' relationship (you only need one to match).
- **|** This wildcard makes a logical OR relationship between wildcards. You can thus search something or something else. You may need to add a '\' before this command to avoid the shell thinking you want a pipe. 
- **[^]** This is the equivalent of [!] in standard wildcards, i.e. it is a logical “not” and will match anything not listed within the square brackets. 

!!! Example 

    ```bash
    $ cat myfile | grep '^s.*n$'
    ```

    This command searches the file myfile for lines starting with an "s" and ending with an "n", and prints them to the standard output. 

### Scripting 

Scripting is used to perform complex or repetitive tasks without user intervention. All Linux commands can be used in a script including wild cards. 

The most common reason for making a script is probably to avoid writing the same command again and again. 

!!! NOTE

    If it is just a one-line command you want to do again and again, then ['alias'](../hints#alias) is more suited for this. 

!!! hint

    Type along!

!!! Example "Simple example of a script 'analysis.sh'"

    You can download <a href="https://raw.githubusercontent.com/hpc2n/intro-linux/main/docs/analysis.sh">analysis.sh here</a> and <a href="https://raw.githubusercontent.com/hpc2n/intro-linux/main/docs/program.sh">program.sh here</a>. You can get <a href="https://raw.githubusercontent.com/hpc2n/intro-linux/main/docs/file.dat">file.dat here</a>. Hint: right-click, copy url, and then use ``wget`` to get it where you want it directly.  

    ```bash
    #!/bin/bash
    grep 'ABCD' file.dat > file_filtered.dat
    ./program.sh < file_filtered.dat > output.dat
    ```

    This script can be executed with ``./analysis.sh`` (remember to check that the [permission](../filesystem/#chmod__-__change__permissions) for executing the script ``analysis.sh`` as user is set - you should also make sure ``program.sh`` has permissions set to execute as user). 

To change the permissions to execute a script (here named analysis.sh), for just the user, you could do: 

<div>
```bash
$ chmod u+x analysis.sh
```
</div>

The above script can then be executed with

<div>
```bash
$ ./analysis.se
```
</div>

For more examples of (more useful) scripts, see for instance this <a href=https://www.hostinger.com/tutorials/bash-script-example" target="_blank">list of 25 Easy Bash Script Examples</a>. 
