# create dotfiles_old in homedir
mkdir -p ~/dotfiles_old
printf "Backing up old .vimrc\n"
mv ~/.vimrc ~/dotfiles_old/
printf "Backing up old .zshrc\n"
mv ~/.zshrc ~/dotfiles_old/
printf "Backing up old .zshrc\n"
mv ~/.tmux.conf ~/dotfiles_old/

ln -s ~/repos/dotfiles/zshrc ~/.zshrc
ln -s ~/repos/dotfiles/vimrc ~/.vimrc
ln -s ~/repos/dotfiles/tmux.conf ~/.tmux.conf

printf "Creating vim directories\n"
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
mkdir -p ~/.config

printf "Deploying new vim colors\n"
cp vim/colors/* ~/.vim/colors

cd ~
printf "Activating new .vimrc\n"
source .vimrc
printf "Activating new .zshrc\n"
source .zshrc
printf "Activating new .tmux.conf\n"
source .tmux.conf

printf "Installing Vundle\n"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim