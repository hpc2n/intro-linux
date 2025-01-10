# Navigating the File System

This section is going to be a high-level talk about the Linux filesystem concepts, not a low-level description of filesystem types. 

!!! Note "Learning objectives" 

    **Questions** 

    - How do I list my files?
    - How do create and remove files and directories?
    - How do I copy/rename files and directories? 
    
    **Learning objectives** 

    - Learn how to navigate the Linux file system
    - Learn about files and directories
    - Learn about paths 
    - Be able to create and delete files and directories, as well as rename and copy them 
    - Get a brief introduction to **permissions** 
    - Learn about options (flags) and arguments to shell commands 
    - Learn about the **tab completion**
     
![Tree of dir structure](images/tree.png){: style="width: 500px;float: right"}

The Linux filesystem directory structure starts with the top root directory, which is shown as <code>/</code>. Below this are several other standard directories. Of particular interest are <code>usr/bin</code>, <code>home</code>, <code>usr/lib</code>, and <code>usr/lib64</code>. A common directory which you will also often find is <code>usr/local/bin</code>. 

The picture on the right shows typical subdirectories under <code>/</code> (note that the command 'tree' does not work at all HPC centres, though it does work on Tetralith - see the page [tree](../tree) under "Extras section for how to install if it is missing). Some of the directories have a **symbolic link** to a different name - this is often done to make it quicker to write, but can also be for compatibility reasons since some software have hardcoded paths.

!!! Note

    The ``path`` or ``pathname`` is the representation of the location of a file or folder/directory on a computer file system.
 

- **/** is the root of the directory structure on a Linux filesystem 
- **/usr/bin** contains (most) of the system-specific binaries
- **/usr/local/bin** holds non-system binaries. often locally compiled/maintained packages
- **/home** is where the home directories of the users of the system are located
- **/usr/lib** holds kernel modules and shared library images needed to boot the system and run commands in the root filesystem
- **/usr/lib64** is the same as **/usr/lib**, just for 64-bit libraries 

User-installed binaries are often located in **/opt**. 

The file system could also be illustrated like this: 

![folders of filesystem structure](images/filesystem-folders.png){: style="width: 500px;float: left"}

!!! warning "Note"

    The character ``/`` can be 

    1. the root directory, if it is at the front of a file or directory name 
    2. a separator if it appears inside a path. 

!!! note

    If you are on a local cluster, on an HPC centre, etc. where you are not root, you will as default be in your home directory when you login. You can use ``cd ..`` a couple times to go to the root of the system and do ``tree`` there if you want, or do ``tree`` in your home directory (you can always return there with just ``cd``). 

    Running ``tree`` in ``/`` on a supercomputing centre will probably give a very large/long output! 

### Home folders on Tetralith

![home folders file structure](images/homefolders-focus.png){: style="width: 500px;float: left"}

The above shows an illustration where the home folders are emphasized. 

## pwd

The command ``pwd`` (print working directory) will print out the full pathname of the working directory to the screen. 

You can use this to find out which directory you are in.

### Example, in your home directory 

On Tetralith, user ``x_birbr``: 

```bash
[x_birbr@tetralith3 ~]$ pwd
/home/x_birbr
[x_birbr@tetralith3 ~]$ 
```

On Kebnekaise, user ``bbrydsoe``: 

```bash
b-an01 [~]$ pwd
/home/b/bbrydsoe
b-an01 [~]$ 
```

### Example, in a directory named ``testdir``

On Tetralith, user ``x_birbr``:

```bash
[x_birbr@tetralith3 testdir]$ pwd
/home/x_birbr/testdir
[x_birbr@tetralith3 testdir]$
```

### Example, in subdirectory ``mydir`` under directory ``testdir``

On Tetralith, user ``x_birbr``: 

```bash
[x_birbr@tetralith3 mydir]$ pwd
/home/x_birbr/testdir/mydir
[x_birbr@tetralith3 mydir]$ 
```

## ls - listing files/directories

The ls command is used to list files. If you just give the command "ls" with no flags it will list all files in the current directory except for hidden files.

<div>
```bash
ls [flags] [directory]
```
</div>

This way you can to list files/subdirectories for any directory, but the default one is the one you are currently standing in. 

Some examples: 

- <code>ls /</code> lists contents of the root directory
- <code>ls ..</code> lists the contents of the parent directory of the current
- <code>ls ~</code> lists the contents of your user home directory
- <code>ls *</code> lists contents of current directory and subdirectories

Commonly used flags: 

- <code>-d */</code> lists only directories
- <code>-a</code> lists content including hidden files and directories
- <code>-l</code> lists content in long table format (permissions, owners, size in bytes, modification date/time, file/directory name)
- <code>-lh</code> adds an extra column to above representing size of each file/directory
- <code>-t</code> lists content sorted by last modified date in descending order
- <code>-tr</code> lists content sorted by last modified date in ascending order
- <code>-R</code> lists contents recursively in all subdirectories
- <code>-s</code> list files with their sizes
- <code>-S</code> sort files/directories by size in descending order
- <code>-Sr</code> sort files/directories by size in ascending order

To get more flags, type <code>ls \--help</code> or <code>man ls</code> in the terminal to see the manual. 

!!! Example "The output for a few of the flags, for a directory with two subdirectories and some files" 

    ```bash
    [x_birbr@tetralith1 mytestdir]$ ls
    myfile.txt  myotherfile.txt  testdir1  testdir2
    
    [x_birbr@tetralith1 mytestdir]$ ls -a
    ./  ../  myfile.txt  myotherfile.dat  testdir1/  testdir2/

    [x_birbr@tetralith1 mytestdir]$ ls -l
    total 3
    -rw-rw-r-- 1 x_birbr x_birbr   27 Sep 11 11:43 myfile.txt
    -rw-rw-r-- 1 x_birbr x_birbr   33 Sep 11 11:43 myotherfile.txt
    drwxrwxr-x 2 x_birbr x_birbr 4096 Sep 11 11:40 testdir1
    drwxrwxr-x 2 x_birbr x_birbr 4096 Sep 11 11:39 testdir2

    [x_birbr@tetralith1 mytestdir]$ ls -la
    total 5
    drwxrwxr-x 4 x_birbr x_birbr 4096 Sep 11 11:43 .
    drwx------ 3 x_birbr x_birbr 4096 Sep 11 11:43 ..
    -rw-rw-r-- 1 x_birbr x_birbr   27 Sep 11 11:43 myfile.txt
    -rw-rw-r-- 1 x_birbr x_birbr   33 Sep 11 11:43 myotherfile.txt
    drwxrwxr-x 2 x_birbr x_birbr 4096 Sep 11 11:40 testdir1
    drwxrwxr-x 2 x_birbr x_birbr 4096 Sep 11 11:39 testdir2

    [x_birbr@tetralith1 mytestdir]$ ls -lah
    total 5.0K
    drwxrwxr-x 4 x_birbr x_birbr 4.0K Sep 11 11:43 .
    drwx------ 3 x_birbr x_birbr 4.0K Sep 11 11:43 ..
    -rw-rw-r-- 1 x_birbr x_birbr   27 Sep 11 11:43 myfile.txt
    -rw-rw-r-- 1 x_birbr x_birbr   33 Sep 11 11:43 myotherfile.txt
    drwxrwxr-x 2 x_birbr x_birbr 4.0K Sep 11 11:40 testdir1
    drwxrwxr-x 2 x_birbr x_birbr 4.0K Sep 11 11:39 testdir2

    [x_birbr@tetralith1 mytestdir]$ ls -latr
    total 5
    drwxrwxr-x 2 x_birbr x_birbr 4096 Sep 11 11:39 testdir2
    drwxrwxr-x 2 x_birbr x_birbr 4096 Sep 11 11:40 testdir1
    -rw-rw-r-- 1 x_birbr x_birbr   27 Sep 11 11:43 myfile.txt
    -rw-rw-r-- 1 x_birbr x_birbr   33 Sep 11 11:43 myotherfile.txt
    drwx------ 3 x_birbr x_birbr 4096 Sep 11 11:43 ..
    drwxrwxr-x 4 x_birbr x_birbr 4096 Sep 11 11:43 .

    [x_birbr@tetralith1 mytestdir]$ ls *
    myfile.txt  myotherfile.dat

    testdir1:
    file1.txt  file2.sh  file3.c  file4.dat

    testdir2:
    file1.txt  file2.txt  file3.c

    [x_birbr@tetralith1 mytestdir]$ cd testdir1
    b-an01 [~/mytestdir/testdir1]$ ls -l
    total 2
    -rw-rw-r-- 1 x_birbr x_birbr 31 Sep 11 11:47 file1.txt
    -rw-rw-r-- 1 x_birbr x_birbr 16 Sep 11 11:49 file2.sh
    -rw-rw-r-- 1 x_birbr x_birbr 74 Sep 11 11:49 file3.c
    -rw-rw-r-- 1 x_birbr x_birbr 25 Sep 11 11:50 file4.dat

    [x_birbr@tetralith1 mytestdir]$ ls -ls
    total 2
    1 -rw-rw-r-- 1 x_birbr x_birbr 31 Sep 11 11:47 file1.txt
    1 -rw-rw-r-- 1 x_birbr x_birbr 16 Sep 11 11:49 file2.sh
    1 -rw-rw-r-- 1 x_birbr x_birbr 74 Sep 11 11:49 file3.c
    1 -rw-rw-r-- 1 x_birbr x_birbr 25 Sep 11 11:50 file4.dat
    ```

    The "drwxr-xr-x" and "-rw-r\--r\--" are examples of permissions. The prefex d means is it a directory. A "-" means no permission for that. There are three groups: owner, group, and all. Note that “r” is for read, “w” is for write, and “x” is for execute.  

## chmod - change permissions 

The command <code>chmod</code> is used to change permissions for files and directories. 

!!! Note "There are three types of permission groups"

    - **owners**: these permissions will only apply to owners and will not affect other groups.
    - **groups**: you can assign a group of users specific permissions, which will only impact users within the group. The members of your storage directory belongs here. 
    - **all users**: these permissions will apply to all users, so be careful with this.

!!! Note "There are three kinds of file permissions"

    - Read (r): This allows a user or a group to view a file (and so also to copy it).
    - Write (w): This permits the user to write or modify a file or directory.
    - Execute (x): A user or a group with execute permissions can execute a file. They can also view a subdirectory.  

The permissions for a file, directory, or symbolic link has 10 "bits" and looks similar to this:

![Permissions](images/permissions.png){: style="width: 400px}

As shown, the first bit can be "-" (a file), "d" (a directory), or "l" (a link). 

The following group of 3 bits are for the owner, then the next 3 for the group, and then the last 3 for all users. Each can have the r(ead), w(rite), and (e)x(ecute) permission set. 

!!! Note "To change permissions, here are some examples" 

    - owner
        - **chmod +rwx FILE/DIR** to add all permissions of a file with name FILE or a directory with name DIR
        - **chmod -rwx FILE/DIR** to remove all permissions from a file with name FILE or a directory with name DIR 
        - **chmod +x FILE** to add executable permissions
        - **chmod -wx FILE** to remove write and executable permissions
    - group
        - **chmod g+rwx FILE** to add all permissions to FILE 
        - **chmod g-rwx FILE** to remove all permissions to FILE
        - **chmod g+wx FILE** to give write and execute permissions to FILE
        - **chmod g-x FILE** to remove execute permissions to FILE
    - others
        - **chmod o+rwx FILE** to add all permissions to FILE
        - **chmod o-rwx FILE** to remove all permissions to FILE
        - **chmod o+w FILE** to add write permissions to FILE
        - **chmod o-rwx DIR** to remove all permissions to DIR 
    - all
        - **chmod ugo+rwx FILE/DIR** to add all permissions for all users (owner, group, others) to file named FILE or directory named DIR
        - **chmod a=rwx FILE/DIR** same as above
        - **chmod a=r DIR** give read permissions to all for DIR 

## chown - change ownership

To change ownership of a file or directory, use the command <code>chown</code>. 

<div>
```bash
chown [OPTIONS] USER[:GROUP] FILE(s)
```
</div>

!!! Note "Examples"

    - <code>chown USERNAME FILE</code> the user with USERNAME becomes the new owner of FILE
    - <code>chown USERNAME DIRECTORY</code> the user with USERNAME becomes the new owner of DIRECTORY (but not any subdirectories)
    - <code>chown USERNAME:folk DIRECTORY</code> the user ownership is changed to USER and the group ownership to group "folk" for the directory DIRECTORY
    - <code>chown :folk DIRECTORY</code> the group ownership is changed to the group "folk" for the directory DIRECTORY
    - <code>chown -R USERNAME:folk DIRECTORY</code> the user ownership is changed to USERNAME and the group ownership is changed to group "folk" for the directory DIRECTORY and all subdirectories

!!! Warning 

    As default, <code>chown</code> does not generate output on success and returns zero. 

## Create and remove directories/files 

This section contains a few examples of how to work with files and directories through command line interface. 

- **mkdir DIR**: Create a directory DIR
- **rm -rf DIR**: Remove a directory DIR. The flag "-r" means recursively and "-f" means do so without asking for each file and subdirectory. Useful, but dangerous. Be careful! 
- **cd**: Go to your home directory ($HOME)
- **cd DIR**: Change directory to DIR
- **cd ..**: Change directory to the parent directory of the current directory
- **touch FILE**: create an empty file with the name FILE 

You also user "rm" to remove files; 

<div>
```bash
rm file.txt
```
</div>

The command <code>pwd</code> tells you the current directory path. 

!!! Example "Creating directories, changing directories, removing directory and file"

    **HINT: Code-along!**

    ```bash
    [x_birbr@tetralith1 ~]$ mkdir mytestdir
    [x_birbr@tetralith1 ~]$ cd mytestdir/
    [x_birbr@tetralith1 mytestdir]$ mkdir testdir1
    [x_birbr@tetralith1 mytestdir]$ mkdir testdir2
    [x_birbr@tetralith1 mytestdir]$ mkdir testdir3
    [x_birbr@tetralith1 mytestdir]$ rm -rf testdir3
    [x_birbr@tetralith1 mytestdir]$ cd testdir1
    [x_birbr@tetralith1 testdir1]$ touch file1.txt
    [x_birbr@tetralith1 testdir1]$ touch file2.sh
    [x_birbr@tetralith1 testdir1]$ touch file3.c
    [x_birbr@tetralith1 testdir1]$ touch file4.dat
    [x_birbr@tetralith1 testdir1]$ touch file5.txt
    [x_birbr@tetralith1 testdir1]$ rm file5.txt 
    [x_birbr@tetralith1 testdir1]$ 
    [x_birbr@tetralith1 testdir1]$ cd ..
    [x_birbr@tetralith1 mytestdir]$ cd testdir2/
    [x_birbr@tetralith1 testdir2]$ 
    ```

!!! Note

    This was done on Tetralith. You will notice that only the current (subdir) is shown in the prompt. At some other centres **all** the (sub)dirs would be shown. 

    Example: HPC2N
    
    ```bash
    b-an01 [~]$ cd mytestdir
    b-an01 [~/mytestdir]$ cd testdir1
    b-an01 [~/mytestdir/testdir1]$ 
    ```

## cp - copy files/directories

This command is used to copy files or directories.  

- **cp myfile.txt DIR/**: copy the file "myfile.txt" to the directory DIR
- **cp DIR1/ DIR2/**: copy the directory DIR1 into the directory DIR2 (Note: overwrites existing files with same name)
- **cp -R DIR1/ DIR2/**: copy the directory DIR1 and all subdirectories into the directory DIR2. 

## mv - rename files/directories

The command <code>mv</code> is used to rename files and directories. It can also be used to **move** a file or directory to another location. 

- **mv file1.txt file2.txt**: renames <code>file1.txt</code> to <code>file2.txt</code>
- **mv DIR1/ DIR2/**: renames directory <code>DIR1</code> to directory <code>DIR2/</code>
- **mv file1.txt DIR1/**: moves the file <code>file1.txt</code> into the directory <code>DIR1/</code> 

!!! Note 

    <code>mv</code> complains if there is already a file/directory with the new name. You can force the renaming with "-f" at the cost of the disappearence of the file that previously held the name. 

## Exercise 

!!! Exercise "Exercise"

    1. Create three files (touch)
    2. Create a directory and then create a subdirectory of that directory (mkdir, cd)
    3. Create a file in the subdirectory (touch)
    4. Create another file inside the directory you created and then move it to the subdirectory (touch, cd, mv)
    5. Rename one of the directories (mv)
    6. Delete/remove a file (rm)
    7. Delete/remove the subdirectory (rm)  

## Symbolic links

Symbolic links are also called soft links, or just symlinks. It is a pointer to another file or directory. 

- It is useful both for ease 
    - you avoid using a long path each time you change to a directory, like your project directory
    - as well as to avoid changing hard links within other scripts or programs. This is good if you for instance install a program or use a script that assumes the library it uses is called libcoolness.a and not libcoolness.2.0.a. You can then just update the symlink instead of renaming the library or updating potentially many instances where it is mentioned in the program. 

Command:

<div>
```bash
ln -s real-file-or-lib link-name
```
</div>

!!! Example

    ```bash
    ln -s /proj/intro-linux/users/MYUSERNAME $HOME/myproj
    ```

    This creates a symbolic link named "myproj" in your home directory, pointing to the location /proj/intro-linux/users/MYUSERNAME. The directory "intro-linux" is the project storage directory for this course project. For me, this would look like this: 

    ```bash
    [x_birbr@tetralith1 ~]$ ls -l
    total 2
    lrwxrwxrwx 1 x_birbr x_birbr   31 Sep 11 12:01 myproj -> /proj/intro-linux/users/x_birbr
    drwxrwxr-x 4 x_birbr x_birbr 4096 Sep 11 11:43 mytestdir
    ```

## Redirection

Usually, standard input comes from the keyboard etc. and the standard output goes to the screen. There is also standard error. All of these can be redirected with Linux commands. 


- **>** redirects the output of some command 
    - **Example**, output of "ls" to a file: <code>ls > test.dat</code>
- **>>** concatenate the output of some command to the content of a ﬁle
    - **Example**, adds the output of ls to the end of a file "test.dat": <code>ls >> test.dat</code>
- **<** changes the standard input
- **2>** redirects the standard error:
    - **Example**, redirect the error that is thrown from your program named "myprogram" to a file "error.log": <code>./myprogram 2> error.log</code>
- **2>&1** redirects both standard output and standard error
    - **Example**, redirect output and errors from your program to the same file: <code>./myprogram > logﬁle 2>&1</code>

!!! Example "Some more examples"

    **HINT: code-along!** 

    ```bash 
    cat file >> file2
    ```

    Append the contents of file 1 to file2

    ```bash
    echo 'text to append_add_here' >> file2
    ```

    Append some text to a file called file2

    ```bash
    printf "text to append\n" >> fileName
    ```

    Another way to append some text to a file 

!!! Example "Adding longer blocks of text to a file, using the command line." 

    **HINT: code-along!** 

    1. Open the file for writing
    ```bash
    cat > foo.txt
    ```

    2. Add some text: 
    ```bash
    This is a test.
    I like the Unix operating systems.

    The weather is nice today.
    I am feeling sleepy. 
    ```

    3. To save the changes press CTRL-d i.e. press and hold CTRL and press d. 


## Pipes

Pipes are used when you want to take the output of one command and use it as input for another command. 

Here follows some examples: 

**HINT: try the examples!** You need a file <code>file.txt</code> for the examples. Either create a suitable one with some instances of the word string, or download (right-click and save): <a href="../file.txt">file.txt</a> 

!!! Example "Find the instances of the word 'string' in file.txt and count them"

    ```bash
    grep -o -i string file.txt | wc -l
    ```

!!! Example "Find the lines with instances of 'string' in file.txt and output them to file.out"

    ```bash
    grep string file.txt > file.out
    ```

!!! Example "Find the lines with instances of 'string' in file.txt and append them to file.out" 

    ```bash
    grep string file.txt >> file.out
    ```

## Exporting variables 

<a href="https://en.wikipedia.org/wiki/Environment_variable" target="_blank">Environment variables</a> store data that is used by the operating system and other programs.

Some are intrinsic to the operating system, some for a specific program/library/programming language, and some are created by the user. 

The variables can both be used in scripts and on the command line. Usually you reference them by putting a special symbol in front of or around the variable name. By convention, environment variable names are in UPPER CASE. 

**Examples:**

- **$HOME** Your home directory
- **$PWD** This variable points to your current directory
- **$LD_LIBRARY_PATH** a colon-separated list of directories that the dynamic linker should search for shared objects before searching in any other directories
- **$OMP_NUM_THREADS** Number of OpenMP threads
- **$PYTHONPATH** Path to the directory where your Python libraries and packages are installed 

!!! Note "To see the content of an environment variable named ENVIRONMENT-VARIABLE"

    ```bash
    echo $ENVIRONMENT-VARIABLE
    ```

!!! Tip 

    You will get a long list of all environment variables currently set with the command: 

    ```bash 
    env
    ```

!!! Note "Some environment variables need to be exported in order to be used"

    This is how you set the environment variable VARIABLE to value: 

    For the <code>bash</code> shell
        ```bash
        export VARIABLE=value
        ```

    For <code>csh</code> and related shells
        ```bash
        setenv VARIABLE value
        ```

**Some examples:** 

!!! Example "Setting the number of OpenMP threads to 8 in <code>bash</code>"

    ```bash
    export OMP_NUM_THREADS=8
    ```

!!! Example "Adding a new path to <code>$LD\_LIBRARY\_PATH</code>" 

    ```bash
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/your/custom/path/
    ```

!!! Warning 

    The environment variable only retains the value you have set for the duration of the session. When you open a new terminal window or login again, you need to set it again. 

    To avoid that, add it to your <code>.bashrc</code> file, but only do so if it should truly be persisten across many sessions (like adding a new directory to search to <code>LD\_LIBRARY\_PATH</code> for instance). 

!!! Example "Quickly add a new directory to <code>LD\_LIBRARY\_PATH</code> in tour <code>.bashrc</code>" 

    ```bash
    echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/your/custom/path/" >> ~/.bashrc
    ```

    Change <code>/your/custom/path/</code> to the actual path to the directory for your library. 

