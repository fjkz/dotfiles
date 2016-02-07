set nocompatible
set noswapfile

" increase buffer size
set viminfo='20,<1000,s1000

" indent
set expandtab
set tabstop=8
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set cindent

" autocomplete filename in command line mode
set wildmenu
" show file path name in the title bar
set title

" start from the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endif

" highlight space at the end of line
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces
  \ term=underline guibg=DarkGray ctermbg=DarkGray
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

"keybinding
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap gj j
nnoremap gk k
vnoremap gj j
vnoremap gk k

"NeoBundle
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

call neobundle#end()

filetype plugin indent on
