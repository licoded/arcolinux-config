# 注意事项

- 不像VIM, 可以一直按着Ctrl键, TMUX必须先松开Ctrl键, 然后才能监听/接收/识别下一个按键
- 应该是没有关闭快捷键的, `session/pane/window` 应该都没有

# Session/会话

## 会话快捷键

- `<Ctrl+b> d`: 分离当前会话。
- `<Ctrl+b> s`: 列出所有会话。
    - 这里进入的叫"choose-tree"
        - 在 `man tmux` 中搜 choose-tree
        - 可用的命令
            - `x` 删除当前 item, 按 y 确认, 不是会车哦!
- `<Ctrl+b> $`: 重命名当前会话。

# pane/窗格

## split/create

- `<Ctrl+b> -` to 上下分割
	- default is `<Ctrl+b>"` 
- `<Ctrl+b> |` to 左右分割
	- 需要按 SHIFT
	- default is `<Ctrl+b>%` 

## navigate & resize

- `<Ctrl+h/j/k/l>` to resize
- `<Ctrl+b> h/j/k/l` to navigate

> The above two commands has been tested in both VIM and TMUX.

- `<Ctrl+b> ;`：**光标切换**到上一个窗格。
- `<Ctrl+b> .`：光标切换到下一个窗格。
	- 这两个类似与vim中行内搜索

- `<Ctrl+b> {`：当前窗格与上一个窗格**交换位置**。
- `<Ctrl+b> }`：当前窗格与下一个窗格交换位置。

- `<Ctrl+b> <Ctrl+o>`：**所有窗格向前移动**一个位置，第一个窗格变成最后一个窗格。
- `<Ctrl+b> <Alt+o>`：所有窗格向后移动一个位置，最后一个窗格变成第一个窗格。

- `<Ctrl+b> x`：**关闭**当前窗格。
- `<Ctrl+b> !`：将当前窗格拆分为一个**独立窗口**。

- `<Ctrl+b> m`：当前窗格**全屏**显示，再使用一次会变回原来大小。
	- default is `<Ctrl+b>z` 

- `Ctrl+b q`：显示窗格编号。

# window/窗口

## navigate

- `<Ctrl+b> c`：**创建**一个新窗口，状态栏会显示多个窗口的信息。

- `<Ctrl+b>n/p` to switch
	- next/previous
- `<Ctrl+b> <number>`：切换到指定编号的窗口，其中的`<number>`是状态栏上的窗口编号。

- `<Ctrl+b> w`：**从列表中选择窗口**。

- `<Ctrl+b> ,`：窗口**重命名**。

# VI-MODE

- `<Ctrl+b> [`：进入VI-MODE
- `j/k`
- `<S-j/k>` move page with cursor fixed position in page (not in text)
- `<C-u/d>`
- `<C-b/f>`
- `<Ctrl+c>`：退出VI-MODE
    - 直接按 `q` 键也可

# references

- https://www.ruanyifeng.com/blog/2019/10/tmux.html
- https://www.josean.com/posts/tmux-setup
