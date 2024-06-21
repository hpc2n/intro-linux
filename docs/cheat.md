# Linux Cheat Sheet

written by P. Ojeda with minor updates/changes by B. Brydsø. 

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

