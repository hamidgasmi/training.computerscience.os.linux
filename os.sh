#I.Terminal: Get Started:
#I.1. Debian System: Open a terminal
### Shortcut : CTL + ALT + T
### Command: Alt + F2, type gnome-terminal
#I.2. Run a command without from the terminal without blocking it: Append a &
emacs &
nohup emacs #nohup runs a commands and ignores hangup signals (see help)
#I.3. Terminal shortcuts:
###Copy: CTL + Shift + C
###Cut: ?
###Past: CTL + Shift + V
### Switch between apps: ALT + Tab
### Lock: (Windows Key) + L

#II.Terminal prompt: Make it shorter
##PS1 variable contains the default prompt we see when we open a shell
##PS2: is our 2nd  prompt. It  gets shown when a command is not finished. Type echo "asd and hit enter, the secondary prompt will let you enter more lines until you close the inverted commas.
##See PS3, PS4... 
#II.1. Display current environment variable PS1:
###It displays username + folder path that could be too long
###\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$
echo $PS1
#II.2. Modify PS1
export PS1='\[\033[32m\]\u\[\033[00m\]:$ '
#II.3. Persist our modification in bashrc
nano ~/.bashrc
#II.4 To see the current location:
pwd

