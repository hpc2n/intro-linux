# Scripting

This section will look at scripting, but we start with a quick introduction to **permissions**.  

!!! note "Learning objectives"

    **Questions** 

    - What are file permissions?
    - What is a script?
    - How do I write a script? 

    **Objectives** 

    - Learn how to make a simple script 
    - Get a brief introduction to **permissions**


!!! Hint "Code along!" 

    Try out / code along for some of these examples. 

    You can use the contents of the directory ``/exercises/script`` that you got from the downloaded tarball (<a href="https://github.com/hpc2n/linux-command-line-101/raw/refs/heads/main/exercises.tar.gz">exercises.tar.gz</a>) to play with. If you have not done so already, right-click and save to download, or right-click and copy the url, then do ``wget THE-URL-YOU-COPIED`` in a terminal window to download it there. Then do <code>tar -zxvf patterns.tar.gz</code> to unpack.  

## Permissions  

!!! note 

    The command <code>chmod</code> is used to change permissions for files and directories.

Permissions are needed to, among other things, make a file executable. 

**Let us take a look at an example** 

```bash
bbrydsoe@defiant:~/HPC2N/courses/linux-command-line-101/exercises/script$ ls -lart
total 28
-rwxr-xr-x 1 bbrydsoe folk    9 Feb 27 12:56 program.sh
-rwxr-xr-x 1 bbrydsoe folk  153 Feb 27 12:56 imagefind.sh
drwxr-xr-x 2 bbrydsoe folk 4096 Feb 27 12:56 image
-rw-r--r-- 1 bbrydsoe folk  128 Feb 27 12:56 file.txt
-rw-r--r-- 1 bbrydsoe folk   54 Feb 27 12:56 file_filtered.dat
-rw-r--r-- 1 bbrydsoe folk  120 Feb 27 12:56 file.dat
-rwxr-xr-x 1 bbrydsoe folk   99 Feb 27 12:56 analysis.sh
drwxr-xr-x 5 bbrydsoe folk   53 Feb 27 12:56 ..
drwxr-xr-x 3 bbrydsoe folk  133 Feb 27 12:56 .
bbrydsoe@defiant:~/HPC2N/courses/linux-command-line-101/exercises/script$ 
```

If you look at the left-most column, you see an example of **permissions**. 

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

!!! Note

    It is also possible to change the ownership of a file or a directory. We are not going to cover this here, but you can read about the command <code>chown</code> and how to use it in the "[More commands](../more-commands)" section under EXTRAS.

## Scripting 

Scripting is used to perform complex or repetitive tasks without user intervention. All Linux commands can be used in a script including wild cards. 

The most common reason for making a script is probably to avoid writing the same command again and again. 

!!! NOTE

    If it is just a one-line command you want to do again and again, then ['alias'](../hints#alias) is more suited for this. 

!!! hint "Type along!" 

    The files ``analysis.sh``, ``program.sh``, and ``file.dat`` are all located in ``exercises/scripts``. 

!!! Example "Simple script 'analysis.sh'"


    ```bash
    #!/bin/bash
    grep 'ABCD' file.dat > file_filtered.dat
    ./program.sh < file_filtered.dat > output.dat
    ```

    This script can be executed with ``./analysis.sh`` (remember to check that the [permission](#permissions) for executing the script ``analysis.sh`` as user is set - you should also make sure ``program.sh`` has permissions set to execute as user). 

    To change the permissions to execute a script (here named ``analysis.sh``), for just the user, you could do: 

    ```bash
    $ chmod u+x analysis.sh
    ```

    The above script can then be executed with

    ```bash
    $ ./analysis.sh
    ```

    **What it does**

    - First line of the script: telling the system it should be executed in the ``bash`` shell, since commands differ between shells (the program loader is told to run the program ``/bin/bash`` as first argument). ``#!`` are called "shebang" 
    - second line: search for the string ``ABCD`` in the file ``file.dat``, then redirect the output to the file ``file_filtered.dat`` 
    - third line: run the program ``program.sh`` (which counts lines on the input file: ``wc -l $1``) with the file ``file_filtered.dat`` as input. It then redirects the output to the file ``output.dat``.  

!!! Example "Execute a command on the output of find"

    This example script ``imagefind.sh`` will find all files with the extention ``.png`` in ``$HOME/exercises/script/image`` and then copy them to a directory named ``myimages``. <br> 
    Then it searches for files with ``er`` as part of the name and redirects the output to a file named ``someimagesfiles.txt`` 

    ```bash
    #!/bin/bash
    find $HOME/exercises/script/image -type f -name "*.png" -exec cp {} myimages \; 
    find myimages -type f -name "*er*" > someimagesfiles.txt
    ``` 

### More advanced example

!!! Example "Execute a command on output of find and loop over output files" 

    This example script will find all files with extension ``.eps`` in the current directory (and below) and then copy them to the directory ``figures``. <br> 
    Afterwards it creates a variable FIGFILES that contains the full path to the directory with the figures, and all the files in it. <br> 
    Then follows a loop over all files. <br> 
    Inside the loop we convert ``.eps`` files to ``.pdf`` files. The extra line before is just a way to avoid the newly created ``.pdf`` files ends up with extension ``.eps.pdf``.  

    ```bash 
    #!/bin/bash
    find . -type f -name "*.eps" -exec cp {} $HOME/figures \;
    FIGFILES="$HOME/figures/*"
    for f in $FIGFILES
    do
        g=${f%.*}
        ps2pdf -DEPSCrop "$f" "$g.pdf"
    done 
    ```


For more examples of (more useful) scripts, see for instance this <a href=https://www.hostinger.com/tutorials/bash-script-example" target="_blank">list of 25 Easy Bash Script Examples</a>. 

!!! note "Keypoints" 

    - You change permissions for files and directories with ``chmod``   
    - Scripting is used to perform complex or repetitive tasks without user intervention. All Linux commands can be used in a script including wild cards. 

