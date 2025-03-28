# More (advanced) commands. 

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


