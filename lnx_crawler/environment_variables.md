# -----Set Environment Variables on Linux using export-----
> $ export VAR="value"

# Print variable
> $ printenv <variable>
> $ printenv VAR
> $ echo $VAR

# Set Persistent Environment Variables on Linux
 # The most popular way to set environment variables persistently is to add them to the “.bashrc” file

 # Reload bashrc
 > $ source ~/.bashrc

# Via login shells
  # Use .bash_profile instead
> $ export TZ="America/New_York"
> $ source ~/.bash_profile

# System environment | permant variables
 # Using etc/environment
> $ export EDITOR="vi"

# Set Environment Variables in one line
 # One line for .bashrc
 $ echo "export VAR="value"" >> ~/.bashrc && source ~/.bashrc


 # One line for bash_profile
 $ echo "export VAR="value"" >> ~/.bash_profile && source ~/.bash_profile


 # One line for /etc/environment
 $ echo "export VAR="value"" >> /etc/environment && source /etc/environment

 # -----Unset Environment Variables on Linux--------
 > $ unset <variable>
 > $ unset USERNAME | set -n USERNAME

 # -----Common Set of Environment Variables on Linux-----
 # USER : the current username of the user using the system;
 # EDITOR : the program run to perform file edits on your host;
 # HOME : the home directory of the current user;
 # PATH : a colon separated list of directories where the system looks for commands;
 # PS1 : the primary prompt string (to define the display of the shell prompt);
 # PWD : the current working directory;
 # _ : the most recent command executed on the system (by the user)
 # MAIL : the path to the current user’s mailbox;
 # SHELL : the shell used in order to interpret commands on the system, it can be many different ones (like bash, sh, zsh or others);
 # LANG : the language encoding used on the system;
 # DESKTOP_SESSION : the current desktop used on your host (GNOME, KDE)
 # HISTFILESIZE : number of lines of command history stored in the history file;
 # HISTSIZE : number of lines of history allowed in memory;
 # UID : the current UID for the user

 # -----Set PATH environment variable on Linux------
 $ printenv PATH
/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

# To set the PATH environment variable, add an export line to your .bashrc file and source it.
> $ echo "export PATH="<path>:$PATH"" >> ~/.bashrc && source ~/.bashrc

$ printenv PATH
<path>:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

# List all exported Variables
> export -p
