# create dotfiles_old in homedir
printf "Creating dotfiles_old for backup\n"
mkdir -p ~/dotfiles_old
printf "Creating vim colors directory\n"
mkdir -p ~/.vim
mkdir -p ~/.vim/colors

# backup files
mv ~/.vimrc ~/dotfiles_old/
mv ~/.bashrc ~/dotfiles_old/

# set my dotfiles
cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp vim/colors/* ~/.vim/colors
