# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# UTF-8

export LC_ALL=en_US.UTF-8
export LANG=en_us.UTF-8
export LC_CTYPE=en_US.UTF-8

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=20000
export HISTFILESIZE=2000000
export HISTTIMEFORMAT=" %Y-%m-%d %H:%M:%S "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac




# fix the escaping of tildes etc when tab-autocompleting
shopt -s direxpand

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

export TERM='xterm-256color'

if [ -f ~/.bash_ps1 ] 
then
. ~/.bash_ps1
fi

if [ -f ~/.bash-git-prompt/gitprompt.sh ] 
then
. ~/.bash-git-prompt/gitprompt.sh
elif [ -f ~/Sync/git/bash-git-prompt/gitprompt.sh ]
then
. ~/Sync/git/bash-git-prompt/gitprompt.sh
elif [ -f ~/git/bash-git-prompt/gitprompt.sh ]
then
. ~/git/bash-git-prompt/gitprompt.sh
fi 


PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# source functions
if [ -f ~/.bash_function ]; then
    . ~/.bash_function
fi

# source autoenv
# https://github.com/kennethreitz/autoenv.git
if [ -f ~/bin/autoenv_activate.sh ] ; then
    source ~/bin/autoenv_activate.sh 
fi

# hit up .Xrresources, but not before pre-processing variables are set

# per host stuff. not used atm
case $(hostname) in
  dsfldslkf )
      echo 1 2 3 ;;
  oliver-pc )
      echo ;;
esac

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# some ssh/scp completions (after fzf stuff to overide some of it)
complete -W "$(echo $( sed 's/[, ].*//' < ~/.ssh/known_hosts ;  if [ -f /work/oanda_hosts ] ; then grep address /work/oanda_hosts | sed s/has\ address//g   | awk 'BEGIN{RS="  "} 1' | sort -u ; fi  ))" ssh
complete -W "$(ls -a $PWD && echo $( sed 's/[, ].*//' < ~/.ssh/known_hosts ;  if [ -f /work/oanda_hosts ] ; then grep address /work/oanda_hosts | sed s/has\ address//g   | awk 'BEGIN{RS="  "} 1' | sort -u ; fi  ))" scp
complete -W "$(echo $( sed 's/[, ].*//' < ~/.ssh/known_hosts ;  if [ -f /work/oanda_hosts ] ; then grep address /work/oanda_hosts | sed s/has\ address//g   | awk 'BEGIN{RS="  "} 1' | sort -u ; fi  ))" rdiff 


export PASSWORD_STORE_DIR=~/Sync/pass

export GOPATH=$HOME/Sync/work/golang
export GOBIN=$GOPATH/bin

if [ -f /opt/dev_tools/current/bin/setup_devtools ]
then
  echo sourcing  /opt/dev_tools/current/bin/setup_devtools
  source /opt/dev_tools/current/bin/setup_devtools
fi
if [ -f ~/ansible-python/bin/activate ]
then
echo activating ansible env
. ~/ansible-python/bin/activate
fi
