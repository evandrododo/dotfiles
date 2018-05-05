# dotfiles

## tmux
```
$ cd ~
$ git clone https://github.com/gpakosz/.tmux.git
$ ln -s -f .tmux/.tmux.conf
$ cp .tmux/.tmux.conf.local .
```

## vim
```
$ cd dotfiles
$ cp -R .vim ~/.
$ cp -R .vimrc ~/.
```
Open Vim and type `:PluginInstall`

## zsh
```
$ cp -R .oh-my-zsh ~/.
$ cp -R .zshrc ~/.
```
