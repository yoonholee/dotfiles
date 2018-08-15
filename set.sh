# create dotfiles_old in homedir
printf "Creating dotfiles_old for backup\n"
mkdir -p ~/dotfiles_old
printf "Creating vim colors directory\n"
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
mkdir -p ~/.config

# backup files
mv ~/.vimrc ~/dotfiles_old/
mv ~/.bashrc ~/dotfiles_old/
mv ~/.tmux.conf ~/dotfiles_old/
mv ~/.config/flake8 ~/dotfiles_old/

# set my dotfiles
cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp tmux.conf ~/.tmux.conf
cp vim/colors/* ~/.vim/colors
cp flake8 ~/.config/flake8

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
