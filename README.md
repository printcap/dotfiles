# Development Environment

Setup for development environment

- zsh with Oh My Zsh
- tmux
- neovim

## Ubuntu 18.04

Set user password if only login on via pubkey available:
```bash
sudo bash
passwd <username>
```

```bash
git clone https://github.com/printcap/dotfiles.git
cd dotfiles
bash setup_ubuntu.sh
```

Run and quit with `:q` when done.

```bash
vim +PlugInstall +qall
```
