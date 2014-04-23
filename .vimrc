" always show line numbers
set number

" always show status line
set ls=2

" number of spaces for tab character
set tabstop=4

" number of spaces to autoindent
set shiftwidth=4

" keep 3 lines when scrolling
set scrolloff=3

" highlight searches
set hlsearch

" make search act like search in modern browsers
set incsearch

" show the cursor position all the time
set ruler

" turn off visual bell
set novisualbell
set noerrorbells
set t_vb=

" don't wrap lines
set nowrap

" set color of line numbers
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" set syntax on
syntax on

" automatic commands
if has("autocmd")
	" enable file type detection
	filetype on
	" treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

" ----------------------
" pathogen
" ----------------------
if filereadable(expand("~/.vim/autoload/pathogen.vim"))
	runtime! autoload/pathogen.vim
	if exists("g:loaded_pathogen")
		execute pathogen#infect()
   	endif
endif

" ----------------------
" jedi-vim
" ----------------------
if exists("g:jedi")
	let g:jedi#popup_on_dot = 0
endif

" ----------------------
" nerdtree
" ----------------------
nmap <silent> <c-n> :NERDTreeToggle<CR>
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
	if exists("t:NERDTreeBufName")
		if bufwinnr(t:NERDTreeBufName) != -1
			if winnr("$") == 1
				q
			endif
		endif
	endif
endfunction
