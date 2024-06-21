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

Here follows some examples: 

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

More information in the main [Archiving and compressing section](../../documentation/filesystems/#archiving__and__compressing). 

### File transfer and syncing 

There are several possible ways to transfer files and data to and from HPC2N’s systems: scp, sftp, rsync...

!!! Warning 

    FTP is not permitted due to security problems! 

#### SCP

SCP (Secure CoPy) is a simple way of transferring files between two machines that use the SSH (Secure SHell) protocol. 

!!! Example "From local system to a remote system"

    ```bash
    $ scp sourcefilename user@hostname:somedir/destfilename
    ```

!!! Example "From a remote system to a local system"

    ```bash
    $ scp user@hostname:somedir/sourcefilename destfilename
    ```

#### SFTP

SFTP (SSH File Transfer Protocol or sometimes called Secure File Transfer Protocol) is a network protocol that provides file transfer over a reliable data stream.

!!! Example "From a local system to a remote system"

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

#### rsync

rsync is a utility for efficiently transferring and synchronizing files between a computer and a storage drive and across networked computers by comparing the modification times and sizes of files.

!!! Example "Recursively sync files from one remote directory to a local directory. Also preserve symbolic links and time stamps, and allows resume of partially transferred files on restart" 

    ```bash
    rsync -rlpt username@remote_host:sourcedir/ /path/to/localdir
    ```

!!! Example "Recursively sync a local directory to a remote destination directory, preserving owners, permission, modification times, and symbolic links"

    ```bash
    rsync -a /path/to/localdir/ username@remote_host:destination_directory
    ```

Much more information and examples in [the File transfer section](../../documentation/filesystems/#file__transfer). 

### Connecting with ssh

The <code>ssh</code> command is used for connecting to a remote computer.

Some useful examples:

!!! Example "Connecting to Kebnekaise"
  
    ```bash 
    ssh username@kebnekaise.hpc2n.umu.se
    ```

!!! Example "Connecting to Kebnekaise and enabling graphical display"

    ```bash
    ssh -Y username@kebnekaise.hpc2n.umu.se
    ```

    **Note** that you need to have an X11 server like Xming or Cygwin on Windows, XQuartz on macOS (included on Linux) to open a graphical display. 

!!! Tip 

    If you are using a graphical display, then we are **strongly** recommending ThinLinc. Read more about using that to access HPC2N in the [ThinLinc connection guide](../connections#ThinLinc). 

More information about accessing Kebnekaise in the section about [Accessing](../../documentation/access/). 

### More advanced topics

This section will look at finding patterns ([grep](#grep), [awk](#awk), [wild cards](#wild__cards), [regular expressions](#regular__expressions)) and [scripting](#scripting).  

#### Finding patterns 

Here you will find descptions on how to search for files with specific patterns. 

##### grep 

This command searches for patterns in text files.

!!! Example "Find the pattern 'word' in FILE"

    ```bash
    grep ’word’ FILE
    ```

!!! Example "Find the pattern 'word' recursively under the directory path/to/dir" 

    ```bash
    grep -rine ’word’ path/to/dir
    ```

##### awk 

This command finds patterns in a file and can perform arithmetic/string operations. 

!!! Example "Search for the pattern 'snow' in the file FILE and print out the first column"

    ```bash
    awk ’/snow/ {print$1}’ FILE
    ```

##### Wild cards

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

    This matches myfile0.txt, myfile1.txt,... for all letters between a-z and numbers between 0-9.

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

    This matches ada, afa, aja, ...  and any three letter word that starts with an a and ends with an a and has any character d to j in between.
   
    ```bash
    [0-9]
    ``` 
  
    This matches a range of numbers from 0 to 9. 

    ```bash
    cp {*.dat,*.c,*.pdf} ~
    ```

    This specifies to copy any files ending in .dat, .c, and .pdf to the user's homedirectory. No spaces are allowed between the commas, etc. 

    ```bash
    rm thisfile[!8]*
    ```

    This will remove all files named thisfile*, except those that has an 8 at that position in it's name. 


##### Regular Expressions

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

#### Scripting 

Scripting is used to perform complex or repetitive tasks without user intervention. All Linux commands can be used in a script including wild cards. 

The most common reason for making a script is probably to avoid writing the same command again and again. 

!!! NOTE

    If it is just a one-line command you want to do again and again, then ['alias'](#alias) is more suited for this. 

!!! Example "Simple example of a script 'analysis.sh'"

    ```bash
    #!/bin/bash
    grep ’ABCD’ file.pdb > file_filtered.pdb
    program < file_filtered.pdb > output.dat
    ```

    This script can be executed with ./analysis.sh (remember to check that the [permission](#chmod__-__change__permissions) for executing a script as user is set). 

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

### Alias 

You will often have to write the same command again and again. If it is a longer command, it is reducing your productivity having to repeat it. Then you can use the <code>alias</code> command to create an 'alias' for your command. 

To see the currently definted aliases, execute the 'alias' command: 

<div>
```bash
$ alias
```
</div>

!!! Example "Example"

    This is how it might look when you run <code>alias</code>: 

    ```bash
    b-an01 [~]$ alias
    alias cdn='cat >/dev/null'
    alias dir='ls -lAF'
    alias l='dir'
    alias ls='ls -F'
    ```

    As an example, this means that if you type 'dir' the actual command that is executed is 'ls -lAF'. 

In order to create a new alias, you could write: 

<div>
```bash
$ alias shortName="your custom command here"
```
</div>

!!! Warning 

    The alias will only be valid in that shell, and only until you logout. Next time you will have to issue the 'alias' command again, unless you add it to either your <code>.bashrc</code> or <code>.bash.profile</code> file. 

!!! Example "Adding a new alias to the .bashrc file, using 'nano' editor" 

    1. Open the file: <code>nano ~/.bashrc</code>
 
    2. Inside the editor, scroll down to where your aliases are. If you do not have any, just add them at the end, like this
    ```bash
    #My custom aliases
    alias c="clear"
    alias ll="ls -alF"
    # Colourize ls output
    alias ls='ls --color=auto'
    # Colourize grep output
    alias grep='grep --color=auto'
    # Easily list my SLURM batch jobs
    alias jobs='squeue -u $USER'
    # Find all entries starting with d in the output from the ls -lahrt command
    alias ldir=’ls -lahrt | egrep "^d"’
    ```
    3. Save and Exit the file: <code>CTRL-x</code> (Press CTRL and hold it down while pressing x). Answer 'Y' to save. 
    4. Next time you start a shell or after a new login your new alias is available. To make it available immediately, run 
    ```bash
    $ source ~/.bashrc
    ``` 

## Hints and tricks 

This section contains some hints that might make working with Linux easier. 

### Short-cuts on the CLI

CTRL-SOMEKEY refers to pressing down the CTRL key and then another key while continuing to hold down CTRL. 

Examples: 

- **CTRL-a**: Go to the beginning of the line
- **CTRL-e**: Go to the end of the line
- **CTRL-l**: Clear the terminal
- **TAB**: Auto-complete (i.e. start write a command or file name and then press TAB to auto-complete, if possible)
- **ARROW-UP**: Pressing the arrow-up key repeatedly will let you cycle through recent commands
- **CTRL-r**: you will get a prompt to write text to search in the list of recent commands. The list is saved in <code>.bash.history</code> in your $HOME. 

### Misc

- Write 'clear' to clear the terminal
- write 'history' to see a list of the most recent commands written in the terminal
    - You can change the number of saved commands by setting the environment variable HISTSIZE in your <code>.bashrc file</code> in your home directory. 
    - Example: Open <code>.bashrc</code> with <code>nano</code>. Somewhere (at the end for instance) add: <code>export HISTSIZE=NUMBER"</code> where <code>NUMBER</code> is the number of commands to save, for instance 10000. 
- <code>man PROGRAM</code> will give you the manual for a specific program or command, if it exists
    - Example: <code>man gcc</code> will give open manual/help for the compiler <code>gcc</code>, containing flags to the compiler etc. **Note** that you need to first load a module that has gcc in. 

## Linux Cheat Sheet

written by P. Ojeda. 

[PDF version](../../files/linux_cheat_sheet_Oct2015_edit.pdf) 

The below is the same content as in the PDF file, but with minor changes/updates by B. Brydsö. 

**Miscellaneous**

| Command | Effect | &boxv; | Command | Effect |
| ------- | ------ | - | - | - | 
| ls | List files in current directory | &boxv; | less FILE | See the content of file FILE | 
| ls -lah | List files in human readable format | &boxv; | vim FILE | Edit FILE with vim |
| cd /dir | Change to the directory “dir” | &boxv; | whereis data | Prints out the location of “data” | 
| pwd | Your current PATH | &boxv; | tar -cvzf file.tgz FILE | Pack and compress “FILE” | 
| rm FILE | Delete FILE | &boxv; | gunzip file.tgz | Uncompress “file.tgz” | 
| rm -rf DIR | Delete directory DIR | &boxv; | tar -xvf file.tar | Unpack “file.tar” | 

**Wildcards** 

| Wildcard | Meaning | 
| -------- | ------- | 
| * | Means zero or any number of characters. Ex. File* could be File, File2, Fileuiwie, ... | 
| ? | Means only one character. Ex. File? could be File1, Filex, Fileh, but not File22 | 
| [] | Means a range of characters. Ex. File[1-3] could be File1, File2, File3 | 

**grep**

| Command | Meaning | 
| ------- | ------- | 
| grep 'word' file | Search for the pattern 'word' in 'file' |
| grep -rine 'word' home | Search for the pattern 'word' recursively in the directory /home | 

**find** 

| Command | Meaning |
| ------- | ------- |
| find /home -name '*.dat' | Find the files in the directory home ending in '.dat' |
| find /home -mtime +60 | Find every file in /home that was modified more than 60 days ago | 

**pipes** 

| Command | Meaning | 
| ------- | ------- | 
| \| | Take the output of one command as the input of another. Ex. ls | grep 'word' | 

**Secure copy protocol** 

| Command | Effect | 
| ------- | ------ | 
| scp file user123@kebnekaise.hpc2n.umu.se:/home/u/user123/ | Copy “file” to the home directory of the user “user123” | 

**Note: vim commands are in ESC mode** 

| Bash shortcuts | Meaning | &boxv; | vim commands | Meaning | 
| -------------- | ------- | ------ | ------------ | ------- | 
| ctrl+r | Make a reverse search | &boxv; | :w file.txt | Save file.txt | 
| ctrl+a | Go to the beginning of the line | &boxv; | :q! | Exit without saving |
| ctrl+e | Go to the end of the line | &boxv; | :%s/pat1/pat2/g | Replace pattern “pat1” by “pat2” | 
| ctrl+w | Delete the previous word | &boxv; | ctrl+v | Start selection | 
| ctrl+k | Delete words after cursor | &boxv; | dd | Delete line | 
| ctrl+u | Delete current line | &boxv; | x | Delete character |
| ctrl+l | Clean terminal | &boxv; | r | Replace character | 

**awk**

| Command | Meaning | 
| ------- | ------- | 
| awk '/gold/ {print $1}' coins.txt | Search for pattern “gold” in the file coins.txt and print first column | 

**Batch jobs** 

| Command | Effect | 
| ------- | ------ | 
| sbatch job.sh | Launch “job.sh” to the queue | 
| squeue -u user123 | Check the jobs from the user “user123" | 
| scancel JOBID | Remove the job with id “JOBID” from the queue | 
| squeue -f JOBID | Check the details about the job with id “JOBID” | 

**sshfs**

| Command | Meaning | 
| ------- | ------- | 
| sshfs user123@kebnekaise.hpc2n.umu.se /dir1/ /local/dir2 | Mount /dir1 (on Quarry) into your /local/dir2 | 
| fusermount -u /local/dir2 | Unmount the /local/dir2 | 

