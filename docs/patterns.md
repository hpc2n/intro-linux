# Patterns and scripting

This section will look at finding patterns ([grep](#grep), [awk](#awk), [wild cards](#wild__cards), [regular expressions](#regular__expressions)) and [scripting](#scripting).  

!!! note "Learning objectives"

    **Questions** 

    - How do I find out if a specific pattern is in a file?
    - What are regular expressions?
    - What is a script?
    - How do I write a script? 

    **Objectives** 

    - Learn about finding patterns
    - Learn to use ``grep``, ``find``, (and``awk``)
    - Learn to use wild cards
    - Learn to use regular expressions
    - Learn how to make a simple script 


Here you will find descptions on how to search for files with specific patterns. 
!!! Hint "Code along!" 

    Try out / code along for some of these examples. 

    You can use the contents of the directory ``/exercises/patterns`` that you got from the downloaded tarball (<a href="https://github.com/hpc2n/intro-linux/raw/refs/heads/main/exercises.tar.gz">exercises.tar.gz</a>) to play with. If you have not done so already, right-click and save to download, or right-click and copy the url, then do ``wget THE-URL-YOU-COPIED`` in a terminal window to download it there. Then do <code>tar -zxvf patterns.tar.gz</code> to unpack.  

## grep 

This command searches for patterns in text files. 

**Syntax:** 

```bash
grep [options] [FILE]
```

FILE is the name of whatever file you want to look at. 

Some commonly used options are: 

- **-i**: ignore case
- **-o**: only output the instance of the pattern you search for, not the full line 
- **-e**: use a regular expression as pattern for what you search for
- **-c**: do not output the line, just print a count of matching lines 
- **-n**: Prefix  each  line of output with the 1-based line number within its input file.
- **-r**: Read  all  files  under  each  directory, recursively. If no file operand is given, grep searches the working directory. 

See ``man grep`` for more options. 

**Examples** 

!!! tip "Code along"

    A good file to use here is ``fil.txt`` in the ``exercises/patterns`` directory. You will also use ``newfile.txt`` and ``fil.txt`` in the same directory. 

!!! Example "Find the pattern 'word' in FILE"

    ```bash
    grep 'word' FILE
    ```

!!! Example "Find the pattern 'word' recursively under the directory path/to/dir" 

    ```bash
    grep -rine 'word' path/to/dir
    ```

!!! Exercise "Try finding the pattern ``string`` in ``newfile.txt``"

    This file is also located in the ``exercises/patterns`` directory. 

??? Solution "Click to reveal solution"

    ![grep string](images/grepstring.png){: style="width: 400px;float: right;padding: 3px;}
<br>
     
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

## find 

The ``find`` command is used for file and directory search. You can search by name, size, modification time, or content. 

**Syntax**

```bash
find [path] [options] [expression]
```

- **path** is the starting directory for the search
- **options** are settings or conditions for the search
- **expression** is the criteria for filtering and locating files (for instance, only search ``txt```files or only files named ``docs``). 

**Useful common options**

- **-type f**: only search for files
- **-type d**: only search for directories
- **-name NAME**: only search for files with a specific name NAME or pattern
- **-size [+/-]n**: Searches for files based on size. `+n` finds larger files, `-n` finds smaller files. ‘n‘ measures size in characters.
- **-mtime n**: Finds files based on modification time. `n` represents the number of days ago.
- **-exec command {} \;**: Executes a command on each file found. 
 
For more options, check ``man find``

**Examples**

!!! tip "Try yourself"

    You could do the searches inside ``exercises`` directory or inside ``exercises/patterns`` directory. 

    Note that ``*`` is a wildcard that is useful here and means a string of 0 or more characters. You will hear more about it shortly. 

1. Find all files with extension ``.txt`` in the directory you are standing in and below: 

```bash
find . -type f -name "*.txt"
```
2. Find all files with ``file`` as part of the name in the directory ``expressions/patterns`` while standing in ``exercises/script``

```bash
find ../patterns/ -type f -name "*file*"
```

## awk 

Powerful, but somewhat more advanced command! 

This command finds patterns in a file and can perform arithmetic/string operations. You can use it to transform data files and produce formatted reports. 

It allows the user to use variables, numeric functions, string functions, and logical operators. 

Things ``awk`` can do: 

- Scan a file line by line 
- Split each input line into fields 
- Compare input line/fields to pattern 
- Perform action(s) on matched lines 

!!! Example "Search for the pattern 'snow' in the file FILE and print out the first column"

    ```bash
    awk '/snow/ {print$1}' FILE
    ```

!!! Example "Print column 3 and 4 from file mydata.dat"

    ```bash
    awk '{print $3 "\t" $4}' mydata.dat
    ``` 

!!! Example "Print column 2 and 3 from file mydata.dat, but only those rows that contain the letter 'r'"

    ```bash
    awk '/r/ {print $2 "\t" $3}' mydata.dat
    ```

## Wild cards

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

!!! tip "Try some of the commands below" 

    Useful files for these examples are found in ``exercises/patterns`` 


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


## Regular Expressions

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

    This script can be executed with ``./analysis.sh`` (remember to check that the [permission](../filesystem/#chmod__-__change__permissions) for executing the script ``analysis.sh`` as user is set - you should also make sure ``program.sh`` has permissions set to execute as user). 

    To change the permissions to execute a script (here named analysis.sh), for just the user, you could do: 

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
    Inside the loop we convert ``.eps`` files to ``.pdf`` files. The extra lines before is just a way to avoid the newly created ``.pdf`` files end up with extension ``.eps.pdf``.  

    ```bash 
    #!/bin/bash
    find . -type f -name "*.eps" -exec cp {} $HOME/figures \;
    FIGFILES="$HOME/figures/*"
    for f in $FIGFILES
    do
        echo "${f%.*}"
        g=${f%.*}
        ps2pdf -DEPSCrop "$f" "$g.pdf"
    done 
    ```


For more examples of (more useful) scripts, see for instance this <a href=https://www.hostinger.com/tutorials/bash-script-example" target="_blank">list of 25 Easy Bash Script Examples</a>. 

!!! note "Keypoints" 

    - Finding files with specific patterns in their names or content can be done with ``grep`` and ``find``
    - Wildcards are stand-ins for one or more character or number and are useful for when you are finding patterns or removing/copying/listing all files of a certain type 
    - Regular Expressions are a type of globbing patterns that are used when you are working with text. They can be used with ``grep``, ``find``, and many many others 
    - Scripting is used to perform complex or repetitive tasks without user intervention. All Linux commands can be used in a script including wild cards. 

