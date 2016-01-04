alias a='. ~/.bash_aliases'

alias ls='ls --color=auto'
alias passwords='gpg -d /home/olivern/.private/PASSWDS | less'

alias cssh='cssh -o "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" -g'
alias ksp64='/home/olivern/.steam/steamapps/common/Kerbal\ Space\ Program/KSP.x86_64'
alias addsshkey='echo ~/.ssh/*rsa | xargs -n1 ssh-add'

alias irssi='/usr/local/scripts/launch_w_screen irssi'
alias ssh='ssh -a'
alias restart_awesome='echo "awesome.restart()" | awesome-client'

# gcal stuff
# see https://github.com/insanum/gcalcli
alias gw="gcalcli --configFolder=~/Sync/calendar/.gcalcli_work"
alias gp="gcalcli --configFolder=~/Sync/calendar/.gcalcli_personal"
#oanda specific stuff:
alias fz="/usr/local/scripts/work/find_zone.sh"
alias k="kpcli --kdb=$HOME/Sync/work/SysEngMaster.kdbx —readonly"
