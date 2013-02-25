call pathogen#infect()
set nocompatible
set ls=2	" always show status line
retab
set expandtab
set tabstop=4
set shiftwidth=4    " number of spaces to (auto) indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set nobackup        " no backup file
set number          " show line numbers
set ignorecase      " ignore case while searching
"set noignorecase
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0    " turn off scrolling
set autoindent
set smartindent
set cindent

syntax on

if has("gui_running")
    " See ~/.gvimrc
    set guifont=Monospace\ 10
    set lines=50    "height = 50 lines
    set columns=100 "width = 100 cols
    set background=dark
    set selectmode=mouse,key,cmd
    set keymodel=
else
    colorscheme elflord
    set background=dark
endif

filetype plugin indent on
:colorscheme desert
map <F2> :SyntasticCheck<CR>
let g:jedi#popup_on_dot = 0 
set clipboard=unnamedplus

" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15
 
" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"
 
" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0
" Show clang errors in the quickfix window
let g:clang_complete_copen=1
let g:clang_library_path="/usr/lib/"
let g:clang_use_library = 1

nmap <F8> :TagbarToggle<CR>
set foldmethod=indent
set foldlevel=99
nnoremap <F5> :GundoToggle<CR>
