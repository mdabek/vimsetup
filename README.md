# vimsetup
Setup for vim

## .vimrc
```
set tabstop=4
set shiftwidth=4
set expandtab
```
## Pathogen

Add-ons manager
```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
Add this to your vimrc:
```
execute pathogen#infect()
```

Repository: 
[Pathogen](https://github.com/tpope/vim-pathogen)

## Nerdtree
Directory tree view

```bash
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
```

Repository: 
[Nerdtree](https://github.com/scrooloose/nerdtree)


## FZF

FZF is asynchronous search tool

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

VIM plugin
```
cd ~/.vim/bundle
git clone https://github.com/junegunn/fzf.vim
```
Repository:
[FZF](https://github.com/junegunn/fzf)
[FZF-Vim](https://github.com/junegunn/fzf.vim)


## Silver searcher-ag
Silver searcher-ag is a grep-like tool

Installing
```
apt-get install silversearcher-ag
```

VIM plugin
```
cd ~/.vim/bundle && git clone https://github.com/rking/ag.vim ag && echo "set runtimepath^=~/.vim/bundle/ag" >> ~/.vimrc
```

Finally .vimrc configuration
```
let g:ackprg = 'ag --vimgrep'
```

Repository:
[Ag](https://github.com/ggreer/the_silver_searcher)
