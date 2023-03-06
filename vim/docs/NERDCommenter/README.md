> https://github.com/preservim/nerdcommenter

## write in the beginning

- If a `[count]` is given in normal mode, the mapping works as though that many lines were selected in visual-line mode.
	- can add `[count]` in the beginning of a command

## simplication

- `<leader>cc` comment
- `<leader>cu` uncomment
- `<leader>c ` toggle comment
	- There is a `<space>` after `<leader>c`
	- Toggles the comment state of the selected line(s).
		- If the topmost selected line is commented, all selected lines are uncommented and vice versa.
- `<leader>ci` 【individually】
	- Toggles the comment state of the selected line(s) individually.

- `<leader>cm` 【multipart】
	- Comments the given lines using only one set of multipart delimiters.
- `<leader>cn` 【nested】
	- Works the same as `<leader>cc` except 
	- if a line is already commented then it will be commented again.

- `<leader>cy` 【yank】
	- yank/copy before comment

### advanced - to the end of current line

- `<leader>c$`
	- Comments from the cursor to the end of current line.
- `<leader>cA`
	- It **doesn't** do `<leader>c$` first.
	- Adds comment delimiters to the end of current line and then goes into insert mode between them.

### advanced - both side

- `<leader>ca` 【alternative】
	- switch to alternative comment delimiter 
		- `//` <-> `/* */`
- `<leader>cl` & `<leader>cb` 【left & both】
	- `cl` -- just align LEFT SIDE
	- `cb` -- just align BOTH SIDEs

## all keymap

- `[count]<leader>cc` **|NERDCommenterComment|**

  Comment out the current line or text selected in visual mode.

- `[count]<leader>cn` **|NERDCommenterNested|**

  Same as cc but forces nesting.

	> Performs nested commenting.  Works the same as `[count]<leader>cc` except that if a line is already commented then it will be commented again.

- `[count]<leader>c<space>` **|NERDCommenterToggle|**

  Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.

- `[count]<leader>cm` **|NERDCommenterMinimal|**

  Comments the given lines using only one set of multipart delimiters.

- `[count]<leader>ci` **|NERDCommenterInvert|**

  Toggles the comment state of the selected line(s) individually.

- `[count]<leader>cs` **|NERDCommenterSexy|**

  Comments out the selected lines with a pretty block formatted layout.

- `[count]<leader>cy` **|NERDCommenterYank|**

  Same as cc except that the commented line(s) are yanked first.

- `<leader>c$` **|NERDCommenterToEOL|**

  Comments the current line from the cursor to the end of line.

- `<leader>cA` **|NERDCommenterAppend|**

  Adds comment delimiters to the end of line and goes into insert mode between them.

- **|NERDCommenterInsert|**

  Adds comment delimiters at the current cursor position and inserts between. Disabled by default.

- `<leader>ca` **|NERDCommenterAltDelims|**

  Switches to the alternative set of delimiters.

- `[count]<leader>cl` **|NERDCommenterAlignLeft** `[count]<leader>cb` **|NERDCommenterAlignBoth**

  Same as **|NERDCommenterComment|** except that the delimiters are aligned down the left side (`<leader>cl`) or both sides (`<leader>cb`).

- `[count]<leader>cu` **|NERDCommenterUncomment|**

  Uncomments the selected line(s).
