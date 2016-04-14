# create dotfiles_old in homedir
echo -n "Creating dotfiles_old for backup"
mkdir -p ~/dotfiles_old
echo -n "Creating vim colors directory"
mkdir -p ~/.vim
mkdir -p ~/.vim/colors

# backup files
mv ~/.vimrc ~/dotfiles_old/
mv ~/.bashrc ~/dotfiles_old/

# set my dotfiles
cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp colors/* ~/.vim/colors
