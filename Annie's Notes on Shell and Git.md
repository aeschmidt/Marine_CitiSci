# Annie's Notes on Shell and Git

# Git (me a beer)
## Getting Started
To find list of most commonly used git commands use:
```
git help
```
###Set global configuration (only needs to be done once per machine):
```
git config --global user.name "Your Name"
git config --global user.email "you@some.domain"
git config --color.ui "auto" # automatically colors something (not sure exactly what this is controlling)
git config --global core.editor "your_editor" # sublimetext in my case
```
###Create directory and initialize
Make directory:
```
mkdir "your_directory" # no quotes?
```
Navigate to directory:
```
cd "your_directory"
```
Initialize current working directory as a repository:
```
git init
```
###Add files to git repo and check status
Create a text file with one line of text
```
"Type some text here" > file.txt
```
Check status of git repo
```
git status
```
Will tell you an untracked file "file.txt" is present
###Tell git to track files
Add specific files to the staging area:
```
git add filename
```
Add all modified files in the current directory and its sub-directories to the staging area:
```
git add -A .
```
###Commit changes in staging area to repo's history
Without -m, command runs a text editor
```
git commit -m "Message here about changes made to file"
```
###Check out history of changes in repo
```
git log
```
###Check out who made changes
```
git blame
```
### Add a remote to a repo
```
git remote add nickname (default is origin) githubaddress
```
Display repo's remotes:
```
git remote -v
```
### Save changes from local to remote repo
```
git push origin master
```
pull changes from remote repo
```
git pull origin master 
```
Clone remote repo
```
git clone githubaddress
```
Markers used to show conflict in a file during a merge:
```
<<<<<<< HEAD
lines from local file
=======
lines from remote file
>>>>>>> 1234567890abcdef1234567890abcdef12345678
```
### Add remote to push to someone else's repo
```
git remote add nickname (we used upstream) githubaddress
```
Listing remotes:
```
git remote -v
```
should show 2 remotes, origin and upstream

###Conflicts in files
If files in remote and local repos both have changes, merge will fail and changes have to be manually resolved






#Useful shell commands
```
history n #show history of last n shell commands
"Type some text here" > file.txt # creates txt file with one line of text
subl "filename" # opens file in text editor