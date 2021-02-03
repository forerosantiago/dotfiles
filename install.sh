rm -rf ~/.cfg
echo ".cfg" >> ~/.gitignore
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME clone --bare https://github.com/forerosantiago/dotfiles $HOME/.cfg
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f main
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
