Toggles between the current window and the current buffer opened in a new tab page.

![](maximize-window-example.gif)

## Command

```vim
:ToggleOnly
```

You have to define your own key bindings. For example:

```vim
nnoremap <leader>o :ToggleOnly<Enter>
```

## Installation

Use your favourite plugin manager. For example, using [Plug](https://github.com/junegunn/vim-plug):

```vim
call plug#begin()
Plug 'caenrique/nvim-maximize-window-toggle'
call plug#end()
```
