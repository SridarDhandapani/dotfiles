" My Settings / Sridar Dhandapani
" I created this vimrc file based on works of many vim expert and my
" understanding of vim...

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

"keep a backup file
"set backup
set nobackup
set noswapfile
set nowritebackup

"set guifont=Inconsolata:h13
"set guifont=Source\ Code\ Pro:h12
set guifont=DroidSansMono\ Nerd\ Font\ 12
let mapleader=","

"smart autoindending when starting a new line
set smartindent

"Powerline settings
set laststatus=2
set encoding=utf-8

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

" Airline ------------------------------

let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline#extensions#whitespace#enabled = 0

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

"fzf - fuzzy finder
set rtp+=/usr/local/opt/fzf

"mouse settings
set mousemodel=popup
set nomousehide
set mouse=a


"SuperTab
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

"MacOS clipboard
set clipboard=unnamed

"Vim-Go 
"Mappings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au filetype go inoremap <buffer> . .<C-x><C-o>
"Settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"


" Auto Pairs
au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->', '<' : '>'}, ['{'])

