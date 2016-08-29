" My Settings / Sridar Dhandapani
" I created this vimrc file based on works of many vim expert and my
" understanding of vim...

"-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible               " be iMproved, required
filetype plugin indent on      " required

" Automatic reloading of .vimrc file after save
autocmd! bufwritepost .vimrc source %
" Switched to Vundle from Pathogen for it's simplicity and clarity...
" First clone Vundle from GitHub
"
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" Edit this vimrc file to your heart's content and install all plugins
"
" vim +PluginInstall +qall
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins                                                               {{{-
"let Vundle manage Vundle "required!
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'wincent/command-t'

"Python and PHP Debugger
"Plugin 'fisadev/vim-debug.vim'
"
"Better file browser
Plugin 'scrooloose/nerdtree'

"Code commenter
Plugin 'scrooloose/nerdcommenter'

"Syntax checking
Plugin 'scrooloose/syntastic'

"Class/module browser
Plugin 'majutsushi/tagbar'

"Code and files fuzzy finder
Plugin 'kien/ctrlp.vim'

"Powerline
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'Lokaltog/powerline'

"Surround
Plugin 'tpope/vim-surround'

"Autoclose
Plugin 'Townk/vim-autoclose'

"Indent text object
Plugin 'michaeljsmith/vim-indent-object'

"Python mode (indentation, doc, refactor, lints, code checking, motion and
"operators, highlighting, run and ipdb breakpoints)
Plugin 'klen/python-mode'

"Snippets manager (SnipMate), dependencies, and snippets repo
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/snipmate-snippets'
Plugin 'plasticboy/vim-markdown'
Plugin 'croaker/mustang-vim'
Plugin 'vim-scripts/vim-python-virtualenv'

"Autocompletion
"Plugin 'Valloric/YouCompleteMe'

"Python code checker
"Plugin 'pyflakes.vim'

"Search results counter
Plugin 'IndexedSearch'

"XML/HTML tags navigation
Plugin 'matchit.zip'

"Gvim colorscheme
Plugin 'Wombat'

"Yank history navigation
Plugin 'YankRing.vim'

"Version Control Support
"Plugin 'mhinz/vim-signify'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-ruby/vim-ruby'
"Plugin 'davidhalter/jedi-vim'

Plugin 'ervandew/supertab'
Plugin 'vim-scripts/autoproto.vim'
Plugin 'keyworks/vim-lodgeit'
"Plugin 'tsaleh/vim-matchit'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-scripts/pep8'

"vim org-mode
Plugin 'jceb/vim-orgmode'

"webapi-vim
Plugin 'mattn/webapi-vim'

"vim-gist
Plugin 'mattn/gist-vim'

"Solarized color schemes
Plugin 'https://github.com/altercation/vim-colors-solarized.git'

"Bash Support
Plugin 'bash-support.vim'

"AutoPairs
Plugin 'jiangmiao/auto-pairs'

"Powerline alternative
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sridar-dhandapani/promptline.vim'
"Plugin 'edkolev/promptline.vim'
Plugin 'edkolev/tmuxline.vim'

"Vim Go support
Plugin 'fatih/vim-go'

"Typescript
Plugin 'Quramy/tsuquyomi'

"Now complete vundle plugin setup
call vundle#end()   "required


"Settings                                                               {{{-
filetype plugin indent on     " required!

"tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"tablength exceptions
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"always show status bar
"set laststatus=2

"incremental search
set incsearch

"highlighted search results
set hlsearch
map <F2> :nohl<CR>

"line numbers
set number

"copy indent from current line
set autoindent

"read open files again when changed outside Vim
set autoread

"write a modified buffer on each :next, ...
set autowrite

"backspacing over everything in insert mode
set backspace=indent,eol,start

"directory to use for file browser
set browsedir=current

"scan the files given with the 'dictionary' option
set complete+=k

"keep 100 lines of command line history
set history=100

"keep last 100 changes in undo history
set undolevels=100

"mouse settings
set mousemodel=popup
set nomousehide
set mouse=a

"print options
set popt=left:8pc,right:3pc

"show cursor position all the time
set ruler

"ignore case during search
set ignorecase

"ignore case only if search doesn't contain uppercase
set smartcase


"line and column highlighting
set cursorline
highlight CursorLine cterm=NONE ctermbg=7 ctermfg=NONE
set cursorcolumn
set colorcolumn=80
highlight ColorColumn ctermbg=7

"Always show tab
set showtabline=2

"Make window split equal
set equalalways
set eadirection=both

"preserve equal window split on terminal resize
autocmd VimResized * wincmd =

"Do not indent when pasting multiple lines
set paste

"Enable copy/paste on Mac OSX
set clipboard=unnamed

"
"-------------------------------------------------------------------------------
"When editing a file, always jump to the last known cursor position.
"Don't do it when the position is invalid or when inside an event handler
"(happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

"toggle Tagbar display
map <silent> <F4> :TagbarToggle<CR>
"autofocus on Tagbar open
let g:tagbar_autofocus = 1

"NERDTree (better file browser) toggle
map <F3> :NERDTreeToggle<CR>

"tab navigation
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

"Navigate windows with meta+arrows
"map <M-Right> <C-w>l
"map <M-Left> <C-w>h
"map <M-Up> <C-w>k
"map <M-Down> <C-w>j
"imap <M-Right> <ESC><C-w>l
"imap <M-Left> <ESC><C-w>h
"imap <M-Up> <ESC><C-w>k
"imap <M-Down> <ESC><C-w>j

"automatically close autocompletion window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>



"save as sudo
ca w!! w !sudo tee "%"

"colors and settings of autocompletion
highlight Pmenu ctermbg=4 guibg=LightGray
"highlight PmenuSel ctermbg=8 guibg=DarkBlue guifg=Red
"highlight PmenuSbar ctermbg=7 guibg=DarkGray
"highlight PmenuThumb guibg=Black

"debugger keyboard shortcuts
map <F5> :Dbg over<CR>
map <F6> :Dbg into<CR>
map <F7> :Dbg out<CR>
map <F8> :Dbg here<CR>
map <F9> :Dbg break<CR>
map <F10> :Dbg watch<CR>
map <F11> :Dbg down<CR>
map <F12> :Dbg up<CR>

"CtrlP (new fuzzy finder)
let g:ctrlp_map = ',e'
let g:ctrlp_max_height = 30
nmap ,g :CtrlPBufTag<CR>
nmap ,G :CtrlPBufTagAll<CR>
nmap ,f :CtrlPLine<CR>
nmap ,m :CtrlPMRUFiles<CR>

"to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction

"CtrlP with default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>

"Don't change working directory
let g:ctrlp_working_path_mode = 0

"Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

"Ignore files on NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

"simple recursive grep
command! -nargs=1 RecurGrep lvimgrep /<args>/gj ./**/*.* | lopen | set nowrap
command! -nargs=1 RecurGrepFast silent exec 'lgrep! <q-args> ./**/*.*' | lopen
nmap ,R :RecurGrep 
nmap ,r :RecurGrepFast 
nmap ,wR :RecurGrep <cword><CR>
nmap ,wr :RecurGrepFast <cword><CR>


"python-mode settings
"Load the whole plugin
"let g:pymode = 1
"Load run code plugin
let g:pymode_run = 1
"Key for run python code
let g:pymode_run_key = '<leader>r'
"Load pylint code plugin
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"

"Check code every save
let g:pymode_lint_write = 0

"Load rope plugin
let g:pymode_rope = 0
"Enable python folding
let g:pymode_folding = 1
"Enable python objects and motion
let g:pymode_motion = 1
"Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1
"Set default pymode python options
let g:pymode_options = 1

let g:pep8_map='<leader>8'


"rope (from python-mode) settings
nmap ,d :RopeGotoDefinition<CR>
nmap ,D :tab split<CR>:RopeGotoDefinition<CR>
nmap ,o :RopeFindOccurrences<CR>

"don't let pyflakes allways override the quickfix list
let g:pyflakes_use_quickfix = 0
"colors for gvim
"colorscheme Mustang
"colorscheme zenburn

"minibufexpl
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
":MiniBufExplorer on

"when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

"autocompletion of files and commands behaves like shell
"(complete only the common part, list the options that match)
set wildmode=list:longest
set wildignore+=*.bak,*.o,*.e,*~
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

"Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

"autocmd WinEnter * if &ft==python | :AcpDisable | else | :AcpEnable | endif
"autocmd WinEnter * if &omnifunc!='' | :AcpDisable | else | :AcpEnable | endif
"autocmd WinEnter,TabEnter * call CheckAcpStatus()

"Stop that darned noise
set visualbell
set noerrorbells

"keep a backup file
"set backup
set nobackup
set noswapfile
set nowritebackup

syntax on

"set guifont=Inconsolata:h13
set guifont=Source\ Code\ Pro:h12
let mapleader=","

"smart autoindending when starting a new line
set smartindent

nmap <C-D-e> :cnext<CR>

"string of charcters to use in 'list' mode
set listchars=tab:▸\ ,eol:¬,trail:-

"some GUI option, not that I am using is now...
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set autochdir
nmap <leader>H :%!xxd<CR>

"Color Scheme
set t_Co=256
"color wombat256mod
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_degrade=0
"let g:solarized_bold=0
"let g:solarized_underline=0
"let g:solarized_italic=0

"let g:solarized_contrast="high"
"let g:solarized_visibility="high"

"if has('gui_running')
    "set background=light
"else
    "set background=dark
"endif
"call togglebg#map("<F5>")

"set background=light
"colorscheme solarized
"colorscheme solarizedlight
"colorscheme default
"highlight LineNr guibg=purple guifg=lightmagenta
highlight LineNr cterm=NONE ctermbg=7 ctermfg=0
highlight Search cterm=NONE ctermbg=7 ctermfg=0

"Increase max tab page size
set tabpagemax=20

"Window movement
map <C-j> <C-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Set Python interpreter for YCM
"let g:ycm_path_to_python_interpreter = '/Users/sridar/anaconda/bin/python'
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
let g:ycm_confirm_extra_conf = 0

"Powerline settings
set laststatus=2
set encoding=utf-8
"let g:Powerline_colorscheme = 'solarized'
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

"Hide the default mode text (e.g. -- INSERT -- below status line)
set noshowmode

"highliting for vimdiff
if &diff
  set showtabline=0
  hi DiffAdd      term=bold cterm=bold,underline ctermfg=4 ctermbg=NONE
  hi DiffChange   term=bold cterm=bold,underline ctermfg=5 ctermbg=NONE
  hi DiffDelete   term=bold cterm=bold,underline ctermfg=6 ctermbg=NONE
  hi DiffText     term=reverse cterm=bold,underline  ctermfg=1 ctermbg=LightRed
endif

"Auto-pairs Fly Mode
let g:AutoPairsFlyMode = 0

"open help in new tab
cabbrev help tab help
cabbrev h tab help

"Enable airline tmux integration
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"let g:airline_powerline_fonts=1
let g:airline#extensions#tmuxline#enabled=1
let g:airline_theme="sol"


"Promptline
let g:promptline_theme="airline"
let g:promptline_preset = {
        \'a': [ promptline#slices#jobs(), promptline#slices#python_virtualenv() ],
        \'b': [ promptline#slices#cwd({'dir_limit' : 2}) ],
        \'c' : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

"Vim-Go 
"Mappings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
"Settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
