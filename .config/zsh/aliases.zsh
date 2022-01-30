# Git
alias g='git'
alias gp='git push --verbose'

alias gco='git checkout'

alias ga='git add --verbose'
alias gaa='git add --all --verbose'

alias gc='git commit -S -am'
alias gca='git commit -S -av'

alias gs='git stash'
alias gsp='git stash pop'

alias glog='git log --pretty="%h - %s - %ad" --relative-date -20'

# Pacman
alias afetch='echo "Packages:" `pacman -Q | wc -l`'

# Rclone Gdrive copy & sync
alias gdrive-copy='rclone copy -P gdrive: $HOME/Documents/Cours'
alias gdrive-sync='rclone sync -P $HOME/Documents/Cours gdrive:'

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# LEMP Server
alias -g server-start='systemctl start nginx php-fpm mariadb'
alias -g server-stop='systemctl stop nginx php-fpm mariadb'

# QEMU server
alias debian-start='qemu-system-x86_64 -vnc none -k fr -net nic -net user,hostfwd=tcp::60022-:22 -enable-kvm -m 1G -drive file=debian.cow,format=qcow2'

alias ubuntu-start='qemu-system-x86_64 -vnc none -k fr -net nic -net user,hostfwd=tcp::60023-:22 -enable-kvm -m 1G -drive file=ubuntu.cow,format=qcow2'
