# tree

Install and run tree as not-root on an Ubuntu Linux system where it is not installed. 

1. Create a directory to work in:
```bash
mkdir ~/tree
```
2. Change to that directory:
```bash
cd ~/tree
```
3. Download tree:
```bash
apt download tree
```
4. Extract the files:
```bash
dpkg-deb -xv ./*deb ./
```
5. Now you can run the tree command by giving the full path:
```bash
~/tree/usr/bin/tree
```

In order to run it without having to give the full path, create an alias in your <code>~/.bashrc</code> file:
1. Open <code>~/.bashrc</code> without your favourite editor. 
2. Add this line at the end or with your other alias'es: 
```bash
alias tree="$HOME/tree/usr/bin/tree"
```
3. Save the file. 
4. **source** the file: 
```bash 
source ~/.bashrc
```

You can now run tree by just giving the command <code>tree</code>. 
