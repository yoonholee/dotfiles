# create dotfiles_old in homedir
printf "Creating dotfiles_old for backup\n"
mkdir -p ~/dotfiles_old

# backup files
printf "Backing up old .vim/\n"
mv ~/.vim/ ~/dotfiles_old/
printf "Backing up old .vimrc\n"
mv ~/.vimrc ~/dotfiles_old/
printf "Backing up old .zshrc\n"
mv ~/.zshrc ~/dotfiles_old/
printf "Backing up old .tmux.conf\n"
mv ~/.tmux.conf ~/dotfiles_old/
printf "Backing up old flake8 config\n"
mv ~/.config/flake8 ~/dotfiles_old/

printf "Creating vim directories\n"
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
mkdir -p ~/.config

# set my dotfiles
printf "Deploying new .vimrc\n"
cp vimrc ~/.vimrc
printf "Deploying new .zshrc\n"
cp zshrc ~/.zshrc
printf "Deploying new .tmux.conf\n"
cp tmux.conf ~/.tmux.conf
printf "Deploying new vim colors\n"
cp vim/colors/* ~/.vim/colors
printf "Deploying new flake8\n"
cp flake8 ~/.config/flake8

printf "Activating new .vimrc\n"
source ~/.vimrc
printf "Activating new .zshrc\n"
source ~/.zshrc
printf "Activating new .tmux.conf\n"
source ~/.tmux.conf

printf "Installing Vundle\n"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# cd ~/.oh-my-zsh/themes
# git clone https://github.com/geometry-zsh/geometry
