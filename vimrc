" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50        " keep 50 lines of command line history
set ruler        " show the cursor position all the time
set showcmd        " display incomplete commands
set incsearch        " do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq
map <PageUp> <C-U><C-U>
map <PageDown> <C-D><C-D>
imap <PageUp> <C-O><C-U><C-O><C-U>
imap <PageDown> <C-O><C-D><C-O><C-D>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
"set smarttab
"set smartindent
"set ai "Auto indent
"set wrap "Wrap lines
set lbr
set tw=500
filetype indent on
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colo peachpuff
syntax enable
"syntax on
set hlsearch
au BufNewFile,BufRead *.c set colorcolumn=81
au BufNewFile,BufRead *.p4 set filetype=c
au BufNewFile,BufRead *.thrift set filetype=c
au Syntax c runtime! syntax/c.vim
au Syntax cpp runtime! syntax/cpp.vim
au Syntax py runtime! syntax/python.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cscope Integration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/cscope_maps.vim
nnoremap <F5> :!cscope -Rb<CR><CR>:cs reset<CR><CR> 
filetype on
