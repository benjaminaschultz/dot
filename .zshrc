# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/lib/lightdm/lightdm:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

BASE16_SCHEME="eighties"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL



# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#TODO aliases, etc
export TODOTXT_DEFAULT_ACTION=ls
alias td='/home/benjib0t/Dropbox/todo/todo.sh'
alias tdd='/home/benjib0t/Dropbox/todo/todo.sh do'
alias tda='/home/benjib0t/Dropbox/todo/todo.sh add'
alias tdap='/home/benjib0t/Dropbox/todo/todo.sh add pri'
alias tdam='/home/benjib0t/Dropbox/todo/todo.sh addm'
alias tdrm='/home/benjib0t/Dropbox/todo/todo.sh rm'
alias tdls='/home/benjib0t/Dropbox/todo/todo.sh ls'

#GlogPy aliases
alias wptd='/home/benjib0t/terrorbyte/software/git/pypress/scripts/todo_to_wp.py'
alias wpcp='/home/benjib0t/terrorbyte/software/git/pypress/scripts/media_to_wp.py'
alias wpup='/home/benjib0t/terrorbyte/software/git/pypress/scripts/file_to_wp.py'
#ipython alias
alias ipnb='ipython notebook'
# --profile=benjib0t'

#umich pass copy alias
alias pcum='pass -c umich'
alias pbit='pass -c bitbucket'
alias pgit='pass -c github'
alias hcu='pass -c hipchat-um && export LIBGL_ALWAYS_SOFTWARE=1 && hipchat'
alias hco='pass -c hipchat-olark && export LIBGL_ALWAYS_SOFTWARE=1 && hipchat'

export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python:~/glotzer/software/lib/python:~/glotzer/software/
export PATH=$PATH:~/glotzer/software/bin:~/glotzer/software/hoomd-master-install/bin:/home/benjib0t/node_modules/hubot/bin

#skype alias to fix sound bug
alias start_skype="export LD_LIBRARY_PATH=/usr/lib/i386-linux-gnu/mesa/ && env PULSE_LATENCY_MSEC=30 skype"

#setup java class path
export CLASSPATH=$CLASSPATH:/usr/share/java/mysql.jar

#define func to setup olark env
olarkify() {
           export OLARK_HOME="$HOME/olark/git/puppet/modules/olark/files"
           export OLARK_TEST="$HOME/olark/test_bed"
           export OLARK_APPS="$HOME/olark/git"
           export OLARK_ENV=benjib0t
           export OLARK_LOAD_YAML=1
           export PATH=$PATH:$HOME/olark/bin/
           source $OLARK_HOME/env/bootstrap
           source /usr/local/bin/virtualenvwrapper.sh
           }

alias olh='cd $OLARK_HOME'
alias ola='cd $OLARK_APPS'
alias olt='cd $OLARK_TEST'
olarkify
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
