## pathogen install

```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
```

## nerdtree install

```bash
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
find . -type d -name '.git' | xargs rm -rf
```

## jedi-vim install

```bash
cd ~/.vim/bundle
git clone --recursive https://github.com/davidhalter/jedi-vim.git
find . -type d -name '.git' | xargs rm -rf
find . -type f -name '.git' | xargs rm
```
