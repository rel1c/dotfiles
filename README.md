# Adam Peterson's Dotfiles

This is a repository for my common dotfiles that I like to have across different
machines. I use [GNU Stow](https://www.gnu.org/software/stow/) to system link
them to my home directory. The procedure to do so is pretty simple:

```bash
$ cd
$ git clone this-repository.git .dotfiles && cd .dotfiles && stow *
```

If files have been removed from `~/.dotfiles` make sure to re-stow them:

```bash
$ cd ~/.dotfiles && stow -R *
```

To restore the home directory and un-stow dotfiles:

```bash
$ cd ~/.dotfiles && stow -D
```
