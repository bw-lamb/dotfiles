## Dotfile Library

A central library for all of my configuration files. Instead of floating in my home directory, symlinks are pointed to the files in this folder. Not being in `$HOME`, git can reaasonably be used, allowing me to roll back files when I ~~inevitably~~ accidentally blow them up.

#### Requirements
- `git`
- `stow`

Both of these are available for virtually every system under the sun.

On Mac, these can be installed easily using `brew`:

```
$ brew install git stow
```

#### Usage

Place configuration files within the `dotfiles/` folder in the same heirarchy as you would in your `$HOME` directory. For example, a file in `$HOME/.config/` would be placed in `dotfiles/{SUBFOLDER}/.config`, where `SUBFOLDER` is an arbitrary name.


Then, invoke `stow` on all the subfolders:

```
$ cd dotfiles
$ stow */
```

