export PS1="\w 🍊🌿$ "

#-----------------------------
#   FILES AND DIRECTORIES
#-----------------------------
alias ll='ls -FGlAhrt'                      # list with all info
alias cd.='cd ../'                          # Go back 1 directory level
alias cd..='cd ../../'                      # Go back 2 directory levels
alias cd...='cd ../../../'                  # Go back 3 directory levels
cdll () { builtin cd "$@"; ll; }            # Always list directory contents upon 'cd'
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd: Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash: Moves a file to the MacOS trash
zipf () { zip -r "$1".zip "$1" ; }          # zipf: To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'      # numFiles: Count of non-hidden files in current dir

#---------------------------
#   SEARCHING
#---------------------------
alias qfind="find . -name "                 # qfind: Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff: Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs: Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe: Find file whose name ends with a given string

#---------------------------
#   PROCESS MANAGEMENT
#---------------------------
findPid () { lsof -t -c "$@" ; }                                          # findPid: find the pid of a specified process
alias memHogsTop='top -l 1 -o rsize | head -20'                           # find top memory hogs
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'  # find memory hogs
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'         # find cpu hogs

#---------------------------
#   GIT
#---------------------------
if [ -f ~/.git-completion.bash ]; then      # tab for command completion and double-tab to list possible commands
  . ~/.git-completion.bash
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then  # bash prompt which displays info about current git repo
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
 
