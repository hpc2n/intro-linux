# Pipes and filters 

In this section we will look at redirection, pipes (for combining multiple commands), filtering output, and variables and environment variables. 

!!! Note "Learning objectives" 

    **Questions**

    - How do I redirect the output? 
    - How do I pass the output from one command to another command?
    - How do I combine multiple commands?
    - How do I sort and filter output? 
    - What are (environment) variables? 

    **Objectives** 

    - Learn how to redirect output 
    - Learn how to pass output from one command to another and combine multiple commands 
    - Learn to sort and filter the output 
    - Learn about variables and environment variables 

## echo

The echo command in Linux is a built-in command that allows users to display lines of text or strings that are passed as arguments. It is commonly used in shell scripts and batch files to output status text to the screen or a file, but can also be used to see the content of an "environment variable" or as a means to quickly send text from the command line to a file.

**Syntax**

```bash
echo [option] [string]
```

You can find options with ``man echo``. ``string`` is the string that we want to display or do something with. 

**Example - try it!**

Display the string "I am learning Linux": 

```bash
bbrydsoe@defiant:~$ echo "I am learning Linux"
I am learning Linux 
bbrydsoe@defiant:~$ 
```

## Redirection  

I/O redirection: Usually, standard input comes from the keyboard etc. and the standard output goes to the screen. There is also standard error. All of these can be redirected with Linux commands. 

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

### head, tail

- **head** prints the first lines of a file. Usage: ``head -n FILE``
- **tail** prints the lines at the end of a file. Usage: ``tail -n FILE``

**Examples**

Let us use the files in the directory ``exercises/patterns`` you got from the downloaded tarball. 

```bash
bbrydsoe@defiant:~/exercises/patterns$ head -3 myfile3.txt 
Aaaand some text here as well. 
Should I have more lines? Probably.
This is going to be a slightly longer file.
```

```bash
bbrydsoe@defiant:~/exercises/patterns$ tail -2 myfile3.txt 
And more text.
And just a liiiitle more text. 
```

!!! tip "Try it"

     Try the two examples above. You can check with ``cat myfile3.txt`` that it is correct. 

## wc, sort 

These are some simple and very useful commands. 

### wc 

``wc`` is the ‘word count’ command: it counts the number of lines, words, and characters in files (returning the values in that order from left to right). 

!!! Useful options 

    - **-l**: list number of lines per file
    - **-m**: list number of characters per file
    - **-w**: list number of words per file

**Examples** 

I ran the examples on my work desktop "defiant". My username is "bbrydsoe". 

!!! try "Code along"

    Code along for the examples below. We will work with the files in the directory ``exercises/patterns`` that you got from the tarball you downloaded.

1. 
 
```bash
bbrydsoe@defiant:~/exercises/patterns$ wc myfile1.txt 
 4 15 80 myfile1.txt
```
``wc`` counted the number of lines, words, and characters in the file ``myfile1.txt``. It says there are **4 lines**, **15 words**, and **80 characters**.<br><br> 
2. 

```bash
bbrydsoe@defiant:~/exercises/patterns$ wc *.txt
  1   6  34 fil.txt
  0   0   0 myfile0.txt
  4  15  80 myfile1.txt
  2  10  48 myfile2.txt
  7  38 203 myfile3.txt
  0   0   0 myfiles.txt
  0   0   0 thisfile0.txt
  0   0   0 thisfile1.txt
  0   0   0 thisfile2.txt
  0   0   0 thisfile3.txt
  0   0   0 thisfile4.txt
  0   0   0 thisfile5.txt
The sort command is used in Linux to print the output of a file in given order.  0   0   0 thisfile6.txt
  0   0   0 thisfile7.txt
  0   0   0 thisfile8.txt
  0   0   0 thisfile9.txt
  0   0   0 thisfile.txt
 14  69 365 total
```

All lines, words, characters in the files with the extension ``.txt``. Also sums up the total.<br><br> 
3. 

```bash
bbrydsoe@defiant:~/exercises/patterns$ wc -l myfile2.txt 
2 myfile2.txt
```

With ``wc -l`` you only get the number of lines of the file. <br><br>
4.

```bash
bbrydsoe@defiant:~/exercises/patterns$ wc

```

If you do not give a file as input, ``wc`` will assume it should wait for input. You can escape this with CTRL-C (Press the CTRL key and hold it down, then press the C key). 

#### wc - capturing output

Assume you have a large number of files that you want to run ``wc`` on. Then it will not work well to just get the output thrown to screen. It would be much better to get the output to a file, and you can do that this way: 

```bash
bbrydsoe@defiant:~/exercises/patterns$ wc -l *.txt > filelength.txt
```

This will take the number of lines for each file and put to the file ``filelength.txt``:

```bash
bbrydsoe@defiant:~/exercises/patterns$ cat filelength.txt 
  1 fil.txt
  0 myfile0.txt
  4 myfile1.txt
  2 myfile2.txt
  7 myfile3.txt
  0 myfiles.txt
  0 thisfile0.txt
  0 thisfile1.txt
  0 thisfile2.txt
  0 thisfile3.txt
  0 thisfile4.txt
  0 thisfile5.txt
  0 thisfile6.txt
  0 thisfile7.txt
  0 thisfile8.txt
  0 thisfile9.txt
  0 thisfile.txt
 14 total
```

In this case ``less`` might be better to use than ``cat`` if you have many files. 

### sort 

The sort command is used in Linux to print the output of a file in given order.

!!! note "Useful options" 

    - **-n**: compare according to string numerical value
    - **-f**: ignore case
    - **-b**: ignore leading blanks 

**Examples**

!!! tip "Code along"

    I suggest using the file ``numbers.txt`` in the directory ``exercises/patterns``. 

1. Sort the file ``numbers.txt``

```bash
bbrydsoe@defiant:~/exercises/patterns$ sort numbers.txt 
1
15
2
2
3
4
435
65
7
723
74
754
```
2. Let us try sorting with the options ``-n`` instead 

```bash
bbrydsoe@defiant:~/exercises/patterns$ sort -n numbers.txt 
1
2
2
3
4
7
15
65
74
435
723
754
```

This is the difference between the default (alphanumerical) and numerical sorting.<br><br> 
3. What if we run sort on the output file ``filelength.txt`` we got from the section ``wc - capturing output`` above. 

```bash
bbrydsoe@defiant:~/exercises/patterns$ sort -n filelength.txt 
  0 myfile0.txt
  0 myfiles.txt
  0 thisfile0.txt
  0 thisfile1.txt
  0 thisfile2.txt
  0 thisfile3.txt
  0 thisfile4.txt
  0 thisfile5.txt
  0 thisfile6.txt
  0 thisfile7.txt
  0 thisfile8.txt
  0 thisfile9.txt
  0 thisfile.txt
  1 fil.txt
  2 myfile2.txt
  4 myfile1.txt
  7 myfile3.txt
 12 numbers.txt
 26 total
```

## Pipes

Also redirection! 

Pipes are used when you want to take the output of one command and use it as input for another command. This is often called "to pass output to another command". 

In many cases it is possible to do the same with an intermediate file (or more), but it is often better to just combine the commands with one or more pipes. 

The pipe is symbolized by a ``|`` between the commands. 

**Examples**

!!! tip "Code along!" 

    Try code along for the three examples below. We recommend you use the files in the directory ``exercises/patterns`` to work with. 

1. Further up on the page, we counted the lines in all the files with extensions ``.txt`` and threw the output to a file. Let us instead *pipe* the output to ``sort -n`` so we can sort it numerically. 

```bash
bbrydsoe@defiant:~/exercises/patterns$ wc -l *.txt | sort -n
  0 myfile0.txt
  0 myfiles.txt
  0 thisfile0.txt
  0 thisfile1.txt
  0 thisfile2.txt
  0 thisfile3.txt
  0 thisfile4.txt
  0 thisfile5.txt
  0 thisfile6.txt
  0 thisfile7.txt
  0 thisfile8.txt
  0 thisfile9.txt
  0 thisfile.txt
  1 fil.txt
  2 myfile2.txt
  4 myfile1.txt
  7 myfile3.txt
 12 numbers.txt
 26 total
```
2. We could also use ``tail`` on the output to instead see the end of the output: 

```bash
bbrydsoe@defiant:~/exercises/patterns$ wc -l *.txt | tail -3
  0 thisfile9.txt
  0 thisfile.txt
 26 total
```
3. Or we could combine several commands, and sort the output of ``wc`` and then run ``head`` on *that* output: 

```bash
bbrydsoe@defiant:~/exercises/patterns$ wc -l *.txt | sort -n | head -3
  0 myfile0.txt
  0 myfiles.txt
  0 thisfile0.txt
bbrydsoe@defiant:~/exercises/patterns$ 
```

## Exporting variables 

Variables can be very useful.  

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

You can create your own variables to use, for instance in scripts. More about that under the section [scripting](../patterns#scripting). 


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

!!! Example "Quickly add a new directory to <code>LD\_LIBRARY\_PATH</code> in your <code>.bashrc</code>" 

    ```bash
    echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/your/custom/path/" >> ~/.bashrc
    ```

    Change <code>/your/custom/path/</code> to the actual path to the directory for your library. 

!!! note "Keypoints"

    - ``echo`` is used to print output of a string or an environment variable
    - redirection is used to redirect the output of a command
    - the output of one command can be passed to another command
    - the command ``wc`` can be used to count words, lines, or characters
    - the command ``sort`` is used to sort input 
    - pipes are used when passing the output of one command to another command. It is show as ``|``
    - environment variables are used to store data that is used by the operating system and other programs
    - Some common environment variables are: 
        - **$HOME** Your home directory
        - **$PWD** This variable points to your current directory
        - **$LD_LIBRARY_PATH** a colon-separated list of directories that the dynamic linker should search for shared objects before searching in any other directories
        - **$OMP_NUM_THREADS** Number of OpenMP threads
        - **$PYTHONPATH** Path to the directory where your Python libraries and packages are installed 

