" 用法介绍: https://github.com/tpope/vim-surround
" 1. It's easiest to explain with examples. Press `cs"'` inside
"   "Hello world!" -> 'Hello world!'
" 2. Now press `cs'<q>` to change it to
"   'Hello world!' -> <q>Hello world!</q>
" 3. cst"
"   <q>Hello world!</q> -> "Hello world!"
" 4. To remove the delimiters entirely, press ds".
"   "Hello world!" -> Hello world!
" 5. Now with the cursor on "Hello", press ysiw] (iw is a text object).
"   Hello world! -> [Hello] world!
" 6. Now wrap the entire line in parentheses with yssb or yss)
"   { Hello } world! -> ({ Hello } world!)
" 7. Emphasize hello: ysiw<em>
"   Hello world! -> <em>Hello</em> world!
" 8. Finally, let's try out visual mode. Press a capital V (for linewise visual mode) followed by S<p class="important">.
"       <p class="important">
"         <em>Hello</em> world!
"       </p>
"
" The . command will work with ds, cs, and yss if you install repeat.vim.
"
" 9. v + S'
"   Plug aaa/bbb -> Plug 'aaa/bbb'
