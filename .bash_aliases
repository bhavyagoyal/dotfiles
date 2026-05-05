## Backup shortcuts
#drivePath="/media/bhavya/D/"
#alias backupd='rsync -r --update --delete --progress $drivePath /media/bhavya/Bhavya/Backup/D/'

## IITD Proxy settings
#alias exportproxy='export http_proxy=http://10.10.78.22:3128;export https_proxy=https://10.10.78.22:3128'
#alias unsetproxy='unset http_proxy;unset https_proxy'
#alias exportproxydual='export http_proxy=http://10.10.78.62:3128;export https_proxy=https://10.10.78.62:3128;export HTTP_PROXY=http://10.10.78.62:3128;export HTTPS_PROXY=https://10.10.78.62:3128'

# MISC
alias diff='colordiff'
alias vim='vim -O'
alias l='ls -lah'
alias ff='find . -iname'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias rm="rm -I"
alias gpustats='watch -n 0.5 nvidia-smi'

# Samsung Supercom Aliases
#alias wbjobsf='watch -n 5 "bjobs -o \"id:8 queue:13 stat:5 submit_time:15 exec_host:15 name:20 sub_cwd\" |  sort -r"'
#alias bjobsf='bjobs -o "id:8 queue:13 stat:5 submit_time:15 exec_host:15 name:20 sub_cwd" |  sort -r'
#alias cafmake='make all -j20; ldd build/tools/caffe; make pycaffe'
#alias queuestats='bqueues -w -u bhavya.goyal | head -n 1; bqueues -w -u bhavya.goyal | grep _gpu'
#alias diskusage='/usr/lpp/mmfs/bin/mmlsquota -j diva  gpfs.ml1 --block-size=G'
#alias busersswc='busers $(bugroup swc4_ug)'

# Amazon AWS aliases
alias aws-mlops-dev='export AWS_PROFILE=mlops-dev && aws sts get-caller-identity'
alias aws-mlops-prod='export AWS_PROFILE=mlops-prod && aws sts get-caller-identity'
alias aws-mlops-beta='export AWS_PROFILE=mlops-beta && aws sts get-caller-identity'
alias aws-vlcn-stw-beta='export AWS_PROFILE=vlcn-stw-beta && aws sts get-caller-identity'
alias aws-adroit-developer='export AWS_PROFILE=adroit-developer && aws sts get-caller-identity'
alias aws-vlcn-stow-mlops-data-lake-query-beta='export AWS_PROFILE=vlcn-stow-mlops-data-lake-query-beta && aws sts get-caller-identity'
alias aws-vlcn-stow-mlops-data-lake-query-prod='export AWS_PROFILE=vlcn-stow-mlops-data-lake-query-prod && aws sts get-caller-identity'

# Amazon logins
#alias mwinitpass='cat ~/.mpass | mwinit '
alias mwinitos='mwinit -o -s '
alias mwinitpass='~/.mwinitpass.sh '
# Random aliases
alias docker-compose="docker compose"

copytopclip() {
	if command -v pbcopy &> /dev/null; then
		echo 'Using pbcopy'
		cat $1 | pbcopy
	else
		xclip -sel clip $1
		echo 'using xclip'
	fi
}
#alias copytoclip='xclip -sel clip'

# UW VPN
alias vpnconnect='globalprotect connect --portal compsci.vpn.wisc.edu'
alias vpnwiscconnect='globalprotect connect --portal uwmadison.vpn.wisc.edu'
alias vpndisconnect='globalprotect disconnect'

# UW SSH Login Shortcuts
alias sorakapass="sshpass -f ~/.sorakapass"


