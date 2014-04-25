" set syntax on
syntax on

" enable language-dependent indenting
filetype plugin indent on

" always show line numbers
set number

" always show status line
set ls=2

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

" automatic commands
if has("autocmd")
	" treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" tabbing, indenting, etc. for various languages
	autocmd Filetype html setlocal ts=2 sw=2 expandtab
	autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
	autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
	autocmd Filetype python setlocal ts=4 sw=4 expandtab
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
let g:jedi#popup_on_dot = 0

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
