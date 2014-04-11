#!/bin/sh
SEP=
SEPE=
 
CLOCK=
#CALENDAR=☼
CALENDAR=
MUSIC=♫
 
WIDTH=${1}
 
SMALL=80
MEDIUM=100

IP_FG=196
IP_BG=232
BAT_BG=190
#MEDIUM=140
 
#if [ "$WIDTH" -gt "$MEDIUM" ]; then
  if type mpc >/dev/null; then
    MPD="#[fg=colour252,bg=default,nobold,noitalics,nounderscore]$SEP#[fg=colour16,bg=colour252,bold,noitalics,nounderscore] $MUSIC $(mpc current)"
  fi
#fi
 
if [ "$WIDTH" -ge "$SMALL" ]; then
  UNAME="#[fg=colour252,bg=colour236,nobold,noitalics,nounderscore]$SEP#[fg=colour16,bg=colour252,bold,noitalics,nounderscore] $(uname -n)"
fi
 
#DATE="#[fg=colour241,bg=colour236,nobold,noitalics,nounderscore]$SEPE#[fg=colour252,bg=colour236,nobold,noitalics,nounderscore] $CALENDAR $(date +'%D')"

TIME="#[fg=colour236,bg=colour$BAT_BG,nobold,noitalics,nounderscore]$SEP#[fg=colour252,bg=colour236,bold,noitalics,nounderscore] $CLOCK$(date +'%D %H:%M')"

WLAN_IP="#[fg=colour$IP_BG,bg=colour252,nobold,noitalics,nounderscore]$SEP#[fg=colour$IP_FG,bg=colour$IP_BG,nobold,noitalics,nounderscore] $(ip -4 -o addr show dev eth1| awk '{split($4,a,"/");print a[1]}')"

BAT_NOTE="#[fg=colour$BAT_BG,bg=colour$IP_BG,nobold,noitalics,nounderscore]$SEP#[fg=colour236,bg=colour$BAT_BG,nobold,noitalics,nounderscore] $(w4rlockInfo.sh -b )"
#WLAN_IP="#[fg=colour241,bg=colour236,nobold,noitalics,nounderscore]$SEPE#[fg=colour252,bg=colour236,bold,noitalics,nounderscore] $(ip -4 -o addr show dev eth1| awk '{split($4,a,"/");print a[1]}')"
 

echo "$MPD $WLAN_IP $BAT_NOTE $TIME $UNAME " | sed 's/ *$/ /g'
