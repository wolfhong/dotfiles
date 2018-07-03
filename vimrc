"use plug.vim to manage plugins
"https://github.com/junegunn/vim-plug
filetype off
call plug#begin()

" git in vim
"Plug 'https://github.com/tpope/vim-fugitive.git'
"Plug 'https://github.com/tpope/vim-git.git'
" press <Tab> to auto-complete
Plug 'https://github.com/ervandew/supertab.git'
" auto-complete for multiple languages, eg, coding def<Tab> 
" Plug 'https://github.com/msanders/snipmate.vim.git'

"Plug 'https://github.com/fholgado/minibufexpl.vim.git'
"Plug 'https://github.com/mileszs/ack.vim.git'
"Plug 'https://github.com/wincent/Command-T.git'
"Plug 'https://github.com/sjl/gundo.vim.git'
"Plug 'https://github.com/tpope/vim-repeat.git'
"Plug 'https://github.com/tpope/vim-surround.git'
"Plug 'https://github.com/tpope/vim-commentary.git'  "comment supports

Plug 'https://github.com/vim-scripts/TaskList.vim.git'
Plug 'https://github.com/vim-scripts/The-NERD-tree.git'
"Plug 'https://github.com/luochen1990/rainbow.git'
Plug 'https://github.com/plasticboy/vim-markdown.git'
" for undo/redo command
Plug 'https://github.com/mbbill/undotree.git'

" for python
Plug 'https://github.com/fs111/pydoc.vim.git'
Plug 'https://github.com/alfredodeza/pytest.vim.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/vim-scripts/pep8.git'
Plug 'https://github.com/mitechie/pyflakes-pathogen.git'
"Plug 'https://github.com/davidhalter/jedi-vim.git' #Vim requires compiled with py
"Plug 'https://github.com/python-mode/python-mode.git' #Vim requires py

" for golang
"Plug 'https://github.com/fatih/vim-go.git', { 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/fatih/vim-go.git'
Plug 'https://github.com/Blackrush/vim-gocode.git'

call plug#end()
"""""""""""""""""""""""""""""""""""""

"For me, use pathogen.vim instead of plug.vim
"execute pathogen#infect()
"execute pathogen#helptags()
"call pathogen#infect()
"call pathogen#helptags()
filetype on

"colorscheme vividchalk
"colorscheme distinguished
"colorscheme railscasts
"colorscheme jellybeans
"colorscheme monokai
if (has('win32') || has('win95') || has('win64') || has('win16') || has('win32unix'))
  colorscheme vividchalk
elseif (has('unix') || has('mac') || has('macunix'))
  colorscheme monokai
else
  colorscheme monokai
endif

""""""""""""""""""""""""""""""""""""""""
"  for hot-key mapping
""""""""""""""""""""""""""""""""""""""""
" syntastic reset, or use `:lclose` instead.
nmap <F1> :SyntasticReset<CR>
" undo/redo map keys
nmap <F2> :UndotreeToggle<CR>
" show undo-list
nmap <F3> :TaskList<CR>
" show directory
nmap <F4> :NERDTreeToggle<CR>
" <F5> bind to pep8/pycodestyle
" autocmd FileType python nmap <Leader>= :0,$!yapf<CR>

nmap <C-n> :tabnext<CR>
nmap <C-p> :tabprevious<CR>

nmap zm I# -*- coding: utf-8 -*-<CR>
"nmap zj :RopeGotoDefinition<CR>
"nmap zr :RopeRename<CR>

"nmap zp :MBEbb<CR>
"nmap zn :MBEbf<CR>

"vs for vsplit windows
"sp for split windows

set clipboard=unnamed
set foldmethod=indent
set foldlevel=99

"Set utf-8 encoding
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo              "
""""""""""""""""""""""""""""""""""""""""

"Turn backup off, since most stuff is in SVN, git et.c anyway
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related         "
""""""""""""""""""""""""""""""""""""""""

"Use spaces instead of tabs
set expandtab

"Be smart when using tabs
set smarttab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Enable line number
set number

""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows, buffers"
""""""""""""""""""""""""""""""""""""""""

"Smart the way moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

""""""""""""""""""""""""""""""""""""""""
" Status line                          "
""""""""""""""""""""""""""""""""""""""""

"Always show the status line
set laststatus=2

"Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""""""""""""
" Editing mappings                     "
""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""
" Helper functions                     "
""""""""""""""""""""""""""""""""""""""""

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

"Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

"""""""""""""""""""""""""""""""""""""""
" Common Configurations               "
"""""""""""""""""""""""""""""""""""""""
"Enable syntax hightlighting
if &t_Co > 1
  syntax on
  syntax enable
endif

"Enable filetype plugins
filetype plugin indent on
filetype plugin on

"Set auto read when files outside changed
set autoread

"Set how many lines of history VIM has to remember
set history=999

"Set 5 lines to the cursor - moving every 5 lines when using j/k
set so=5

"Always show the current location
set ruler

"Set height of command bar 2
set cmdheight=2

"Buffer hidden when abandoned
set hid

"Set backspace the behavior it should have
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Hightlight the search results
set hlsearch

"Makes search act like search in modern browsers
set incsearch

"Won't redraw while executing macros
set lazyredraw

"Regular expressions magic on
set magic

"Show matching brackets when text indicator is over them
set showmatch

"How many tenths of a second to blink when matching brackets
set mat=2

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Enable cscope features
set cscopequickfix=s-,c-,d-,i-,t-,e-

""""""""""""""""""""""""""""""""""""""""
" Set Filetypes                        "
""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" Startup functions                    "
""""""""""""""""""""""""""""""""""""""""

function! Startup()
    "Make NERDTree autmatically started
    if 0 == argc()
        NERDTree
    end
    
    "Let tagbar auto-start
    Tagbar
endfunction

"Python flake8 check
"autocmd FileType python map <buffer> zfp :call Flake8()<CR>


"""""""""""""""""""""""""""""""""""""
" plugins config
"""""""""""""""""""""""""""""""""""""

"Use rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"Use NERDTree
"Make NERDTree ignore non-source-code files
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '↓'

"Use syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_quiet_messages = {'level': 'warning'}
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height=5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"syntastic for python
let g:syntastic_python_checker_args = "--max-line-length=90"
let g:syntastic_python_checker_args = "pep8_max_line_length=90"


"Use vim-markdown
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_math = 1

"Use undotree
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

"golang required
set nocompatible              " be iMproved, required
