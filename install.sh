alias config="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
source ~/.zshrc
rm -rf .cfg
echo ".cfg" >> .gitignore
git clone --bare https://www.github.com/forerosantiago/dotfiles $HOME/.cfg
config checkout -f main
config config --local status.showUntrackedFiles no
