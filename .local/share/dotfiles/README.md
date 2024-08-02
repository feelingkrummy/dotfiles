## Starting new

```
git init --bare $HOME/.dotfiles
alias dots='/usr/bin/git --git-dir=%HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

add alias to zshrc

## New Machine

```
git clone --bare https://gitlab.com/feelingkrummy/dotfiles.git $HOME/.dotfiles
alias dots='/usr/bin/git --git-dir=%HOME/.dotfiles/ --work-tree=$HOME'
dots checkout
```
