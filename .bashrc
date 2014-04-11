
#{{{COLORS
if [[ -f ~/.dir_colors ]]; then
    eval $(dircolors -b ~/.dir_colors)
fi
#}}}

# Check for an interactive session
[ -z "$PS1" ] && return

#Automaticly cd into directory
shopt -s autocd

#{{{ PROMPT PS1
function getPrompt(){
    #local BLACK="\[\033[0;30m\]"
    #local DGRAY="\[\033[1;30m\]"
    #local BLUE="\[\033[0;34m\]"
    local LBLUE="\[\033[1;34m\]"
    #local GREEN="\[\033[0;32m\]"
    local LGREEN="\[\033[1;32m\]"
    #local CYAN="\[\033[0;36m\]"
    #local LCYAN="\[\033[1;36m\]"
    #local RED="\[\033[0;31m\]"
    #local LRED="\[\033[1;31m\]"
    #local PURPLE="\[\033[0;35m\]"
    #local LPURPLE="\[\033[1;35m\]"
    #local BROWN="\[\033[0;33m\]"
    #local YELLOW="\[\033[1;33m\]"
    #local LGRAY="\[\033[0;37m\]"
    local WHITE="\[\033[1;37m\]"
    #local NONE="\[\033[0m\]"
    #export PS1="${LBLUE}[${LGREEN}\u@\h${LBLUE} \w] # ${WHITE}"
    export PS1="${LBLUE}[${LGREEN}\t${LBLUE}][${LGREEN}\u@\h${LBLUE} \w] $ ${WHITE}"
}

getPrompt

#}}}

#{{{COMPLETION
#if [ -f /etc/bash_completion ]; then
     #/etc/bash_completion
#fi

complete -cf sudo

#}}}

#{{{ALIASES
alias ls-Size='ls -lSh'
alias ..='cd ..'
alias ls='ls --color=auto --group-directories-first'
#alias irssi='screen irssi -c irc.freenode.net -n tunick -w ******pass*****'
alias runDebug='DISPLAY=:1.0 awesome -c '
alias debugAwesome='Xephyr -ac -br -noreset -screen 1024x700 :1 &'
alias stopDebug='killall Xephyr'
alias setCursor='xsetroot -cursor_name left_ptr'
alias grep='grep --colour=auto ' #Te mostrará la salida de grep con colores.
#alias absfind='find /var/abs | grep ' # muy útil para buscar paquete en abs. En ArchLinux
alias scrot='scrot -c -d 5'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -h'
alias du='du -h'
alias apagar='/sbin/poweroff'
#}}}

#{{{ Others Alias
#alias phpMyadmin='firefox http://localhost/phpmyadmin/index.php'
#alias mysqlStart='mysql -p -u root'
#alias hostScan='sudo nbtscan -r 10.75.220.1/24'
#alias opacity='transset .8'
alias shadow='xcompmgr -Cc -D4 -t-5 -l-5 -r4.2 -o.79 &'
alias tty-clock='tty-clock -c -C 7'
alias tar-list='tar -tvf $1'
#alias shadow='xcompmgr -cC -t-3 -l-5 -r5 -I0.02 -O0.03 -D4 -fF &'
#alias verImagen='feh -g 1024x768 -d -S filename'
#alias mysqlConexionesActivas='netstat -ln | grep mysql'
#}}}

#{{{ GnuPG
alias gpgCreateKey='gpg --gen-key'
alias gpgCryptDIR='/usr/bin/perlbin/site_perl/gpgdir -e'
alias gpgDecryptDIR='/usr/bin/perlbin/site_perl/gpgdir -d'
alias gpgDecryptFile='gpg --decrypt'
alias gpgShowPhoto='gpg --list-options show-photos --list-secret-keys'
alias gpgSearchKey='gpg --keyserver subkeys.pgp.net --search-keys'
alias gpgPriveteKeys='gpg --list-secret-keys'
alias gpgDeletePublicKey='gpg --delete-key '
alias gpgDeletePrivateKey='gpg --delete-secret-key'
alias gpgImportKey='gpg --import'
alias gpgSignFile='gpg --clearsign'
alias gpgVerifySign='gpg --verify'
alias gpgPublicKeys='gpg --list-keys'
alias resetAudio='pulseaudio -k && sudo alsa force-reload'
#}}}


#{{{{ EXPORTS
export EDITOR="vim"
export PATH=${PATH}:/opt/android-sdk-linux_x86/tools
export PATH=${PATH}:/opt/android-sdk-linux_x86/platform-tools
export MAIL=/var/spool/mail/emanuelr

# CONTROL HISTORIAL DE COMANDOS
export HISTSIZE=7000           #Cantidad de comandos save
export HISTFILESIZE=7000
export HISTCONTROL=ignoreboth  #Ignora comandos repetidos
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE="pwd:ls"
#}}}

# FUNCTIONS
up() { [ $(( $1 + 0 )) -gt 0 ] && cd $(eval "printf '../'%.0s {1..$1}"); }

# JAVA
export TOMCAT_HOME=/var/lib/tomcat7/webapps
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export CATALINA_HOME=/usr/share/tomcat7
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:~/.npm/bin
export NODE_PATH=$NODE_PATH:/home/emanuelr/.npm/lib/node_modules:/home/emanuelr/.npm
