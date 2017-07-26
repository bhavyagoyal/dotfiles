# SSH Login Shortcuts
alias csc='ssh -X cs1120222@ssh1.iitd.ernet.in'
alias gcl='ssh -X cs1120222@palasi.cse.iitd.ac.in'
alias q4='ssh bhavya.goyal@10.113.138.45'
alias sec1='ssh -X bhavya.goyal@202.20.185.100'

# Backup shortcuts
drivePath="/media/bhavya/D/"
alias backupd='rsync -r --update --delete --progress $drivePath /media/bhavya/Bhavya/Backup/D/'
alias backupdocs='rsync -r --update --delete --progress ~/Documents/ /media/bhavya/Bhavya/Backup/Documents/'

# Proxy settings
alias exportproxy='export http_proxy=http://10.10.78.22:3128;export https_proxy=https://10.10.78.22:3128'
alias unsetproxy='unset http_proxy;unset https_proxy'
alias exportproxydual='export http_proxy=http://10.10.78.62:3128;export https_proxy=https://10.10.78.62:3128;export HTTP_PROXY=http://10.10.78.62:3128;export HTTPS_PROXY=https://10.10.78.62:3128'

# MISC
alias diff='colordiff'
alias gpustats='watch -n 0.5 nvidia-smi'
alias wbjobs='watch -d bjobs'
alias cafmake='make all -j20; ldd build/tools/caffe; make pycaffe'
