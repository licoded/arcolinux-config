## `2c` & `2s`

- `2c` INVALID
- `2s` VALID

## DON'T forget to use `jj` to go back to NORMAL MODE

## DON'T forget to use `ge` to go back to "the last character of the previous word" in NORMAL MODE

## some choices

### comment plugins

I think `tpope/vim-commentary` has a disadvantage as it occupies a important `gXXX` keybind.
But comment is not a command we will use frequently.
So I think it a waste.

## window

- `<C-w>s` up-down split
- `<C-w>v` left-right split

## jump list

- `<C-o>` last
- `<C-i>` next

## change list

- `g;` last
- `g,` next

## vimgrep

> https://stackoverflow.com/questions/7880372/how-to-jump-between-patterns-when-using-vimgrep-quickfix-list

- `vimgrep /search-key/ files`
    - note: only can use files, directory is not supported
    - note: don't contains `node_modules`, so don't use `**`, use `src/**` instead
    -       If you really do this, you can use `<C-c>` to stop a running command in vim!
    - vimgrep can abbr to vim
    

- `:cnext` `:cn`
- `:cnfil`e `:cnf`

## small tips

- `e` and `ge` can also be used, don't just use `w`/`b`
- `<C-o>` -- `INSERT_NORMAL` mode


