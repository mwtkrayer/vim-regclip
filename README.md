# vim-regclip
Copies a `vim` register to the clipboard using OSC52 terminal sequences. Works over SSH.
Terminal must natively support OSC52 sequences (e.g. kitty, alacritty, iterm2, ...).
Requires `printf` and `base64`.

## Installation
Using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'mwtkrayer/vim-regclip'
```

## Usage
Copy nameless register to system clipboard:
```vim
:RegToClip
```

Copy register `"a` to system clipboard:
```vim
:RegToClip a
```
