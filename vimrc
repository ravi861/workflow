" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'ervandew/supertab'
Plugin 'Townk/vim-autoclose'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'RRethy/vim-illuminate'
Plugin 'inside/vim-search-pulse'
Plugin 'zxqfl/tabnine-vim'
"Plugin 'Yggdroot/indentLine'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
call vundle#end()
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set encoding=UTF-8
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
set shiftwidth=2
set tabstop=2
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
syntax enable
colorscheme peachpuff
"syntax on
set hlsearch
hi Search ctermbg=blue
au BufNewFile,BufRead *.tt set filetype=tt2
au BufNewFile,BufRead *.c set colorcolumn=81
au BufNewFile,BufRead *.cpp set colorcolumn=81
au BufNewFile,BufRead *.h set filetype=c
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

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=1      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use"

" You complete me
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:airline_theme='minimalist'
"let g:deoplete#enable_at_startup = 1

" Vim-Airline Configuration
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1 
"let g:airline_theme='minimalist'
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1

let python_highlight_all = 1
map <C-L> :TagbarToggle<CR>
map <C-I> :py3f ~/clang-format.py<cr>
imap <C-I> <c-o>:py3f ~/clang-format.py<cr>
map <C-K> :pwd<cr>
map <C-n> :NERDTreeToggle<CR>
imap <C-n> <c-o>:NERDTreeToggle<CR>
set diffopt=vertical
