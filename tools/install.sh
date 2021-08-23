programs=("git" "zsh")

echo "
______                       
|  ___|                      
| |_ ___  _ __ ___ _ __ ___  
|  _/ _ \| '__/ _ \ '__/ _ \ 
| || (_) | | |  __/ | | (_) |
\_| \___/|_|  \___|_|  \___/ 
                             

Dotfiles installation script.
Github: https://github.com/forerosantiago/dotfiles/

"

read -p "$* This script will overwrite your existing dotfiles, please back up first, then run this script, are you sure you want to continue? [Y/n] " yn
        if [[ $yn == n* ]]; then
        	echo "Installation aborted."
		exit 0
        fi


cd ~
rm -rf dotfiles
git clone https://github.com/forerosantiago/dotfiles/
cd dotfiles

echo
echo "----------------------------------------------------------------------"

for i in "${programs[@]}"
do
	read -p "$* :: Instal $i dotfiles? [Y/n] " yn


	if [[ $yn == y* ]]; then
		stow -D $i
  		stow $i
	fi



done