## Environmental variables
cur_path=$(shell pwd)
vim_dir=$(cur_path)

all: vim_install zsh_install git_config

git_config:
	ln -s $(cur_path)/gitconfig $(HOME)/.gitconfig

## install for vim
vim_install:
	ln -s $(vim_dir)/vimrc.vim $(HOME)/.vimrc
	mkdir -p $(HOME)/.vim/bundle
	git clone https://github.com/VundleVim/Vundle.vim.git $(HOME)/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	chmod 755 $(HOME)/.vimrc

## install for zsh
zsh_install:
	wget --no-check-certificate http://install.ohmyz.sh -O - | sh
	ln -s $(cur_path)/zshrc.zsh $(HOME)/.zshrc
	ln -s $(cur_path)/git.zsh $(HOME)/.git.zsh
	ln -s $(cur_path)/local.zsh $(HOME)/.local.zsh
	chmod 755 $(HOME)/.zshrc

## install for fish
fish_install:
	ln -s fishrc.fish ~/.config/fish/config.fish
	chmod 755 ~/.config/fish/config.fish

## install for tmux
tmux_install:
	ln -s tmux.conf ~/.tmux.conf
	chmod 755 ~/.tmux.conf

## remove all installed files
clean:
	rm -rf $(HOME)/.zshrc
	rm -rf $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm -rf $(HOME)/.gitconfig
	#rm -rf ~/.config/fish/config.fish

