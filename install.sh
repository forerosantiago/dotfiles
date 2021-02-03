echo 'alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"' > ~/.zshrc
. ~/.zshrc

rm -rf .cfg
echo ".cfg" >> .gitignore
git clone --bare https://github.com/forerosantiago/dotfiles $HOME/.cfg
config checkout -f main
config config --local status.showUntrackedFiles no
