"use plug.vim to manage plugins
"https://github.com/junegunn/vim-plug
""""""""""""""""""""""Start Plug"""""""""""""""""""""""
filetype off
call plug#begin()

"git in vim
"Plug 'https://github.com/tpope/vim-fugitive.git'
"Plug 'https://github.com/tpope/vim-git.git'

"press <Tab> to auto-complete
Plug 'https://github.com/ervandew/supertab.git'

"auto-complete for multiple languages, eg, coding def<Tab>
"Plug 'https://github.com/msanders/snipmate.vim.git'

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

"Plug 'https://github.com/iamcco/mathjax-support-for-mkdp.git'
"Plug 'https://github.com/iamcco/markdown-preview.vim.git'

Plug 'https://github.com/iamcco/markdown-preview.nvim.git', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

"auto-completion for quotes, parens, brackets
Plug 'https://github.com/Raimondi/delimitMate.git'

"Plug 'https://github.com/Shougo/neocomplete.vim.git'
Plug 'https://github.com/dhruvasagar/vim-table-mode.git'
"Plug 'https://github.com/honza/vim-snippets.git'
"Plug 'https://github.com/junegunn/vim-easy-align.git'
"Plug 'https://github.com/vim-scripts/YankRing.vim.git'
"Plug 'https://github.com/junegunn/goyo.vim.git'
"Plug 'https://github.com/junegunn/limelight.vim.git'
"Plug 'https://github.com/SirVer/ultisnips.git'
"Plug 'https://github.com/sickill/vim-monokai.git'
"Plug 'https://github.com/mattn/emmet-vim.git'
"Plug 'https://github.com/kshenoy/vim-signature.git'
"Plug 'https://github.com/airblade/vim-gitgutter.git'
"Plug 'https://github.com/scrooloose/nerdcommenter.git'
"Plug 'https://github.com/vim-airline/vim-airline.git'
"Plug 'https://github.com/reedes/vim-colors-pencil.git'
"Plug 'https://github.com/maksimr/vim-jsbeautify.git'
"Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/mbbill/undotree.git' "for undo/redo command

"Press <c-d> to switch to filename only search instead of full path.
"Press <c-r> to switch to regexp mode.
"Press <c-t> to open in the new tab.
Plug 'https://github.com/kien/ctrlp.vim.git'

"for python
Plug 'https://github.com/fs111/pydoc.vim.git'
Plug 'https://github.com/alfredodeza/pytest.vim.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
"Plug 'https://github.com/python-mode/python-mode', { 'branch': 'develop' }
"Plug 'https://github.com/vim-scripts/pep8.git'
"Plug 'https://github.com/mitechie/pyflakes-pathogen.git'
"Plug 'https://github.com/davidhalter/jedi-vim.git' "Vim requires compiled with py
"Plug 'https://github.com/python-mode/python-mode.git' "Vim requires py

"for golang
"Plug 'https://github.com/fatih/vim-go.git', { 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/fatih/vim-go.git'
Plug 'https://github.com/Blackrush/vim-gocode.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/dgryski/vim-godef.git'

call plug#end()
""""""""""""""""""""""End Plug"""""""""""""""""""""""""

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
if (has('mac') || has('macunix'))
  colorscheme monokai
elseif (has('win32') || has('win95') || has('win64') || has('win16') || has('win32unix'))
  colorscheme vividchalk
else
  colorscheme vividchalk
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
" markdown
nmap <F5> :MarkdownPreview<CR>
" find files and folders
nmap <F6> :CtrlP<CR>
nmap <F9> :TagbarToggle<CR>

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

set clipboard=
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
"Use :retab to replace all tab with space
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

" bugfix for cmder: cause typographical confusion
if (has('win32') || has('win95') || has('win64') || has('win16') || has('win32unix') || has('unix'))
  let g:NERDTreeDirArrowExpandable = '＋'
  let g:NERDTreeDirArrowCollapsible = '－'
endif

"Use syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_quiet_messages = {'level': 'warning'}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_args="--max-line-length=140"
let g:syntastic_python_checkers=["flake8"]
let g:syntastic_python_checker_args="--ignore=E226,E402,E741"
let g:pymode_lint_ignore="E226,E402,E741"

" pylint in python-mode
let g:syntastic_python_pylint_post_args="--max-line-length=140"

" ignore error
" [E226] = missing whitespace around arithmetic operator [E226]
let g:pep8_ignore="E226,E402,E741"


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

"wildignore
set wildignore+=*.swp,*.pyc  " Windows

"ctrlp
let g:ctrlp_map = ''  "cancel default mapping <c-p> in ctrlp, for conflict



"go函数追踪
autocmd FileType go nnoremap <buffer> gd :call GodefUnderCursor()<cr>
autocmd FileType go nnoremap <buffer> <C-]> :call GodefUnderCursor()<cr>
let g:godef_split=2    "左右打开新窗口的时候
let g:godef_same_file_in_same_window=1    "函数在同一个文件中时不需要打开新窗口


" markdown相关的
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0
" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1
" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0
" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0
" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''
" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''
" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0
" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''
" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''
" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''
" use a custom port to start server or random for empty
let g:mkdp_port = ''
" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
