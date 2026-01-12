## Dotfile Library

A central library for all of my configuration files. Instead of floating in my home directory, symlinks are pointed to the files in this folder.

### Dependencies
- `git`
- `stow`

Both of these are available for virtually every system under the sun.

### Usage

Place configuration files within the `dotfiles/` folder in the same hierarchy as you would in your `$HOME` directory. For example, a file in `$HOME/.config/` would be placed in `dotfiles/{SUBFOLDER}/.config`.

To 'install' a configuration, just call stow in that subfolder by `stow <config>`
Or, do everything at once with a glob:
```
$ cd dotfiles
$ stow *
```
