# Development Environment

Setup for development environment

- zsh with Oh My Zsh (default shell)
- tmux with tmux theme pack (green)
- neovim with support for C/C++, Python, HTML, JavaScript

## Ubuntu 18.04

In case login system was setup via pubkey only (e.g., cloud deployments)
a user passport must be set. This password will subsequently need to be
entered when changing the default shell to zsh. The password of user
`<username>` is set as user `root`.

```bash
sudo passwd <username>
```

```bash
git clone https://github.com/printcap/dotfiles.git
cd dotfiles
bash setup_ubuntu.sh
```

The "Oh My Zsh" will temporarily enter the zsh shell during setup.
Type `exit` to exit the shell and let this setup process finish.

Run nvim and let it install all plugins:

```bash
nvim +PlugInstall +qall
```

Relogin, probably due to the update, also reboot the system.
