" Basic setting {{
set fenc=utf-8
set nobackup
set noswapfile
set hidden
set showcmd
set autoindent
set number
set showmatch
set backspace=indent,eol,start

" Move
"set whichwrap=b,s,h,l,<,>,[,],~
set scrolloff=5
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Tabline
set expandtab
set tabstop=4
set shiftwidth=4
set autoread
set smarttab

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

" Display setting{{
set pumheight=10
set laststatus=2
set spell
set spelllang=en
"set foldmethod=marker
set cursorline
hi clear CursorLine 

" Clipbord
set clipboard+=unnamed

"set paste
"set ft=zsh:
set vb t_vb=


" auto comment off
augroup auto_comment_off
autocmd!
    autocmd BufEnter * setlocal formatoptions-=r
    autocmd BufEnter * setlocal formatoptions-=o
augroup END


" auto set paste
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif


" Color Scheme
syntax enable
set background=dark
" colorscheme solarized

