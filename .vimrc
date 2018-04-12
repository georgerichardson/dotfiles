set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Go dev  plugin
Plugin 'fatih/vim-go'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" Struct splitter and joiner
Plugin 'AndrewRadev/splitjoin.vim'

" Git wrapper plugin
Plugin 'tpope/vim-fugitive'

" Dope colorscheme
Plugin 'NLKNguyen/papercolor-theme'

" Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

" highlight that python syntax
Plugin 'hdima/python-syntax'

" Python syntax, style, and complexity checker
Plugin 'nvie/vim-flake8'

" airline status bar
Plugin 'vim-airline'

" directory tree plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" auto-complete plugin
Plugin 'Valloric/YouCompleteMe'

" database access text
Plugin 'vim-scripts/dbext.vim'
Plugin 'vim-scripts/SQLComplete.vim'

" navigate between vim and tmux panes
Plugin 'christoomey/vim-tmux-navigator'

" automatic Python docstrings
Plugin 'heavenshell/vim-pydocstring'

" Web Dev
Plugin 'mattn/emmet-vim' 
" Plugin 'skammer/vim-css-color'
"
" Bracket closing
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/lh-brackets'

" Markdown
" Distraction-free writing
Plugin 'junegunn/goyo.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax on
filetype plugin indent on

set number
set hidden
set autowrite
set encoding=utf-8
set backspace=indent,eol,start
set splitbelow
set splitright
set laststatus=2

set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set smartindent     " smarter indent for C-like languages
set shiftwidth=4    " when reading, tabs are 4 spaces
set softtabstop=4   " in insert mode, tabs are 4 spaces

" html settings
" autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Make it easy to find whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" let g:solarized_termcolors=256
" Color scheme
set background=dark
colorscheme Papercolor 

" define my leader mapping
let mapleader = ","

" vim-go settings
let g:go_test_timeout = '10s'

" vim-pydocstring numfocus template
let g:pydocstring_templates_dir = '/Users/George/.vim/bundle/vim-pydocstring-templates/numpy'

" NERDTree settings
" open NERDTree automatically if opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_python_interpreter = '/Users/George/miniconda3/envs/python3.6/bin/python'
" let g:ycm_keep_logfiles = 1
" let g:ycm_log_level = 'debug'

" mapping to automatically take you to definition of variable
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" mapping to make moving through quickview faster
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>c :cclose<CR>

" commands to make opening alternate go files sensible
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')

" vim-go mappings
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>i <Plug>(go-info)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" mapping to build the Go file with appropriate command
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" mapping to toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" mapping to run flake8 tool
autocmd FileType python map <buffer> <leader>8  :call Flake8()<CR>

" mapping to rapidly toggle whitespace viewing
nmap <leader>l :set list!<CR>

" general mappings
inoremap <leader>a <Esc>
inoremap <leader>i <Esc>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

set t_Co=256

set shell=/bin/zsh\ -l

