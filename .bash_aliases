alias oxrandr='xrandr --auto --output DP-1 --mode 1920x1080 --right-of DVI-I-1'

alias ls='ls --color=auto'
alias passwords='gpg -d /home/olivern/.private/PASSWDS | less'

alias cssh='cssh -o "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" -g'
alias ksp64='/home/olivern/.steam/steamapps/common/Kerbal\ Space\ Program/KSP.x86_64'
alias addsshkey='echo ~/.ssh/*rsa | xargs -n1 ssh-add'

alias irssi='/usr/local/scripts/launch_w_screen irssi'
alias ssh='ssh -a'
alias restart_awesome='echo "awesome.restart()" | awesome-client'

alias k="kpcli --kdb=$HOME/Sync/work/SysEngMaster.kdbx —readonly"

#oanda specific stuff:
alias fz="/usr/local/scripts/work/find_zone.sh"
