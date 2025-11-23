# SSH Login Shortcuts
alias sorakapass="sshpass -f ~/.sorakapass"

# Backup shortcuts
drivePath="/media/bhavya/D/"
alias backupd='rsync -r --update --delete --progress $drivePath /media/bhavya/Bhavya/Backup/D/'
alias backupdocs='rsync -r --update --delete --progress ~/Documents/ /media/bhavya/Bhavya/Backup/Documents/'


# Proxy settings
alias exportproxy='export http_proxy=http://10.10.78.22:3128;export https_proxy=https://10.10.78.22:3128'
alias unsetproxy='unset http_proxy;unset https_proxy'
alias exportproxydual='export http_proxy=http://10.10.78.62:3128;export https_proxy=https://10.10.78.62:3128;export HTTP_PROXY=http://10.10.78.62:3128;export HTTPS_PROXY=https://10.10.78.62:3128'

alias vpnconnect='globalprotect connect --portal compsci.vpn.wisc.edu'
alias vpnwiscconnect='globalprotect connect --portal uwmadison.vpn.wisc.edu'
alias vpndisconnect='globalprotect disconnect'

# MISC
alias diff='colordiff'
alias vim='vim -O'
alias l='ls -lah'
alias ff='find . -name'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias copytoclip='xclip -sel clip'
alias rm="rm -I"

# Supercom Aliases
alias gpustats='watch -n 0.5 nvidia-smi'
alias wbjobsf='watch -n 5 "bjobs -o \"id:8 queue:13 stat:5 submit_time:15 exec_host:15 name:20 sub_cwd\" |  sort -r"'
alias bjobsf='bjobs -o "id:8 queue:13 stat:5 submit_time:15 exec_host:15 name:20 sub_cwd" |  sort -r'
alias cafmake='make all -j20; ldd build/tools/caffe; make pycaffe'
alias queuestats='bqueues -w -u bhavya.goyal | head -n 1; bqueues -w -u bhavya.goyal | grep _gpu'
alias diskusage='/usr/lpp/mmfs/bin/mmlsquota -j diva  gpfs.ml1 --block-size=G'
alias busersswc='busers $(bugroup swc4_ug)'


alias aws-mlops-dev='export AWS_PROFILE=mlops-dev && aws sts get-caller-identity'
alias aws-mlops-prod='export AWS_PROFILE=mlops-prod && aws sts get-caller-identity'
alias aws-vlcn-stw-beta='export AWS_PROFILE=vlcn-stw-beta && aws sts get-caller-identity'
alias aws-adroit-developer='export AWS_PROFILE=adroit-developer && aws sts get-caller-identity'


