" .............................................................................
" Close the default status bar, 
" which will behave unexpectedly after disable <Esc>
" .............................................................................
set noshowmode 

" .............................................................................
" Open Top Tabs Line
" 		https://github.com/vim-airline/vim-airline#smarter-tab-line
" 		Automatically displays all buffers when there's only one tab open.
" .............................................................................

let g:airline#extensions#tabline#enabled = 1 " must include 'tabline' in `let g:airline_extensions`

" .............................................................................
" Set statusline on top
" No correct solution now!
" https://github.com/vim-airline/vim-airline#statusline-on-top
" the solution in the above link doesn't work
" .............................................................................

if exists('$TMUX')
	" 在 tmux 中运行的情况下的处理
	let g:airline_statusline_ontop = 1
endif

" .............................................................................
" Speed up AirLine	
" .............................................................................
  
let g:airline_extensions = ['tabline']
