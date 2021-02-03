cd $HOME
rm -rf dotfiles .cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/forerosantiago/dotfiles/ $HOME/.cfg

config switch -f main

config config --local status.showUntrackedFiles no
