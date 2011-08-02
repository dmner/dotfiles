set nocompatible
:filetype on
:au FileType c,cpp,java set cindent
:au FileType make set noexpandtab


set wrap
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4
set number
set bg=dark
set foldmethod=marker
autocmd BufNewFile,BufRead *.p? compiler perl
function! ReverseBackground()
	let Mysyn=&syntax
	if &bg=="light"
		se bg=dark
	else
		se bg=light
	endif
	syn on
	exe "set syntax=" . Mysyn
: echo "now syntax is "&syntax
:endfunction
:command! Inversebackground call ReverseBackground()
:noremap <F4> :Inversebackground<CR>


set showmode
set showmatch

set pastetoggle=<F2>
set backspace=2
set hlsearch
set ruler
if &t_Co > 1
syntax enable
endif

