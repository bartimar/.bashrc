# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# common
alias c='clear'
alias l.='ls -d .* --color=auto'
alias cd..='cd ..'
alias ..='cd ..' 
alias ...='cd ../../../' 
alias ....='cd ../../../../' 
alias .....='cd ../../../../' 
alias .4='cd ../../../../' 
alias .5='cd ../../../../..'
alias mkdir='mkdir -pv'

# network
alias ports='netstat -tulanp'

# install, update
alias install='apt-get install -y'

# configs
alias nocomment='grep -Ev '\''^(#|$)'\'''

# fs
alias dush='du -sh'
alias dfh='df -h'

# k8s
alias k='kubectl'
alias kdp='kubectl describe pod'
alias kds='kubectl describe service'
alias kdd='kubectl describe deployment'
alias ksc='function _ksc(){ kubectl config set-context `kubectl config current-context` --namespace=$1; };_ksc'
alias kb='function _kb(){ kubectl exec -it $1 bash; };_kb'
alias kp-a='kubectl get pods --all-namespaces'
alias wk='watch kubectl get pods'

# cd and ls
cdl() { cd "$@"; ls -lA; }

# save & load everything immediately 
alias bashrc='vim ~/.bashrc ; source ~/.bashrc'
