alias a='. ~/.bash_aliases'

case $(hostname) in
  beast )
      true ;;
  * )
      alias ls='ls --color=auto' ;;
esac



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

alias ztc='function _zt(){ host -l oandacorp.com 10.1.22.11 }; _ztc'

alias gcalp='gcalcli --configFolder /home/oneubauer/.gcal_o.neubauer@gmail.com/'
alias gcalw='gcalcli --configFolder /home/oneubauer/.gcal_oneubauer@oanda.com/'

alias ossh=' function ossh_func {
              for i in $* 
              do
                /usr/bin/urxvtc  -e ssh $i
              done ; exit ; } ; ossh_func '

alias mplayer='LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libfreetype.so.6 /usr/bin/mplayer'

alias prettyjson='python -m json.tool'

alias rdiffnosort='function rdiffnosort_func {
             diff <(ssh $1 "grep -v -e ^$ -e ^# $3") <(ssh $2 "grep -v -e ^$ -e ^# $3")
             }; rdiffnosort_func '
alias rdiff='function rdiff_func {
             diff <(ssh $1 "grep -v -e ^$ -e ^# $3 | sort") <(ssh $2 "grep -v -e ^$ -e ^# $3 | sort ")
             }; rdiff_func '

alias rvimdiff='function rvimdiff_func {
             vimdiff <(ssh $1 "grep -v -e ^# -e ^$ $3 | sort") <(ssh $2 "grep -v -e ^# -e ^$ $3 | sort ")
             }; rvimdiff_func '

alias did="vim  +'normal Go' +'r!date' +'normal Go' " 

alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
alias vi='vim'

alias kc='kubectl'
