" Modifications for lsimons
"
cd ~/
autocmd VimEnter * wincmd p
map <F2> :NERDTreeToggle<CR>
nmap <c-p> :CtrlP<CR>

set hidden

set number
colorscheme wombat
set guioptions-=T
if has('gui_running')
  set guifont=Courier\ New:h10
endif

call pathogen#infect()
syntax on
filetype plugin indent on

" Fix backspace
set nocompatible
set backspace=2

set foldmethod=syntax
set nofoldenable
set incsearch

" Tabstops
autocmd FileType c,cpp,h,rb,cs,rb set tabstop=4

" Python
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set smarttab
autocmd Filetype python set expandtab
autocmd Filetype python set softtabstop=4
autocmd Filetype python set autoindent
" Indent after ':'
"im :<CR> :<CR><TAB>

"au BufWritePost *.c,*.cpp,*.h,*.py silent! !ctags -R &

" Allow reverse tabbing
" for command mode
nmap <S-Tab> <<
" for insert mode
imap <S-Tab> <Esc><<i
