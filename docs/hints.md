# Hints and tricks 

This section contains some hints that might make working with Linux easier. 

## Tab auto-complete

If you press TAB on the keyboard after starting to type a command or a file, it will auto-complete if no other matches or else suggest possible matches. 

## Short-cuts on the CLI

CTRL-SOMEKEY refers to pressing down the CTRL key and then another key while continuing to hold down CTRL. 

Examples: 

- **CTRL-a**: Go to the beginning of the line
- **CTRL-e**: Go to the end of the line
- **CTRL-l**: Clear the terminal
- **TAB**: Auto-complete (i.e. start write a command or file name and then press TAB to auto-complete, if possible)
- **ARROW-UP**: Pressing the arrow-up key repeatedly will let you cycle through recent commands
- **CTRL-r**: you will get a prompt to write text to search in the list of recent commands. The list is saved in <code>.bash.history</code> in your $HOME. 

## Alias 

You will often have to write the same command again and again. If it is a longer command, it is reducing your productivity having to repeat it. Then you can use the <code>alias</code> command to create an 'alias' for your command.

To see the currently definted aliases, execute the 'alias' command:

```bash
$ alias
```

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

```bash
$ alias shortName="your custom command here"
```

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

## Misc

- Write 'clear' to clear the terminal
- write 'history' to see a list of the most recent commands written in the terminal
    - You can change the number of saved commands by setting the environment variable HISTSIZE in your <code>.bashrc file</code> in your home directory. 
    - Example: Open <code>.bashrc</code> with <code>nano</code>. Somewhere (at the end for instance) add: <code>export HISTSIZE=NUMBER"</code> where <code>NUMBER</code> is the number of commands to save, for instance 10000. 
- <code>man PROGRAM</code> will give you the manual for a specific program or command, if it exists
    - Example: <code>man gcc</code> will give open manual/help for the compiler <code>gcc</code>, containing flags to the compiler etc. **Note** that you need to first load a module that has gcc in. 

