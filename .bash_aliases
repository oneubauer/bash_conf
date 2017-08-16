alias a='. ~/.bash_aliases'

alias ls='ls --color=auto'
alias passwords='gpg -d /home/olivern/.private/PASSWDS | less'

alias cssh='cssh -o "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" -g --font 7x14'
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
alias k='function kpcli_func() { 
      mountpoint -q /mnts/SysEng || sudo mount /mnts/SysEng ;  
      [[ -f "/mnts/SysEng/SysEngMaster.kdbx" ]] && rsync /mnts/SysEng/SysEngMaster.kdbx $HOME/var/SysEngMaster.kdbx;
      kpcli --kdb=$HOME/var/SysEngMaster.kdbx —readonly
      }; kpcli_func '
alias bast="ssh oneubauer-bastion.engi.oanda.com"
# use function to allow for arguments
alias zt='function _zt(){ if ! [ "x$1" == "x" ] 
                          then
                             host -l $1.oanda.com 10.1.22.11 
                          else
                             for d in dev ny4 engi ri stage perf t-tr2 g-tr2 stg ng 
                             do host -l $d.oanda.com 10.1.22.11 
                             done
                          fi; }; _zt'

alias gcalp='gcalcli --configFolder /home/oneubauer/.gcal_o.neubauer@gmail.com/'
alias gcalw='gcalcli --configFolder /home/oneubauer/.gcal_oneubauer@oanda.com/'

alias gethyp='function  gethyp_func {
              grep -R $1 /git/syseng/sys-audit/ | sed s/\\/git\\/syseng\\/sys-audit\\/[a-z_]*\\///g 
              } ; gethyp_func '

alias getnet='function getnet_func {
              grep -Ri $1 /git/netconfigs/ |  sed s/\\/git.*configs\\///g 
              } ; getnet_func '

alias ossh=' function ossh_func {
              for i in $* 
              do
                /usr/bin/urxvtc  -e ssh $i
              done ; exit ; } ; ossh_func '
