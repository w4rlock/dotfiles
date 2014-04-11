# Path to your oh-my-zsh configuration.
ZSH=/home/emanuelr/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
#ZSH_THEME="norm"
ZSH_THEME="agnoster" #powerline

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
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

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
#source ~/.bin/tmuxinator.zsh
source /var/lib/gems/1.9.1/gems/tmuxinator-0.6.7/completion/tmuxinator.zsh
# User configuration

alias tar-list='tar -tvf $1'
alias scrot='scrot -c -d 5'
alias ls='ls --color=auto --group-directories-first'
alias nodeinspector='node-inspector --debug 5858'
alias arsapp_ide='tmuxinator start arsapp'
alias wmserver_start='Xephyr -ac -br -noreset -screen 1024x700 :1 &'
alias wmserver_stop='killall Xephyr'
alias wmserver_app='DISPLAY=:1.0 $1 &'


export PATH="/usr/local/heroku/bin:/usr/local/heroku/bin:/home/emanuelr/.local/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/emanuelr/bbZ10/momentics:/home/emanuelr/bbZ10/VMImages/BlackBerry10Simulator-BB10_2_1-1925/controllers:/home/emanuelr/bbZ10/momentics:/home/emanuelr/bbZ10/VMImages/BlackBerry10Simulator-BB10_2_1-1925/controllers"
export PATH="$PATH:/home/emanuelr/.npm/bin"
export NODE_PATH="$NODE_PATH:/home/emanuelr/.npm/lib/node_modules:/home/emanuelr/.npm"
export EDITOR='vim'

# export MANPATH="/usr/local/man:$MANPATH"

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
ncmpcppShow() { BUFFER="ncmpcpp"; zle accept-line; }
zle -N ncmpcppShow
bindkey '^[\' ncmpcppShow

autoload -U promptinit
promptinit
#Change Prompt: prompt walters
#List Promps: prompt -p
