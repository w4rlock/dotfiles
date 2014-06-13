syntax on
filetype off                  " required
filetype plugin indent on     " required

set number
set copyindent
set nocompatible              " be iMproved, required
set history=1000
set foldmethod=marker
set undolevels=1000
set noautoread                                " no autoread when file is changed from outside
set noerrorbells                              " no beep or flash for errors
set backspace=indent,eol,start
set numberwidth=5
set foldmethod=marker

set incsearch
set ignorecase
set smartcase
set hlsearch

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'flazz/vim-colorschemes'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Shougo/unite.vim'
Bundle 'scrooloose/syntastic'
"Bundle 'edkolev/tmuxline.vim'

"Bundle "wookiehangover/jshint.vim"

Bundle 'marijnh/tern_for_vim'
"Bundle 'jelera/vim-javascript-syntax'
"Bundle 'pangloss/vim-javascript'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'

"AutoCompletes
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'Valloric/YouCompleteMe'
Bundle 'fweep/vim-tabber'
"Bundle 'edkolev/promptline.vim'


" Optional:
Bundle "honza/vim-snippets"
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line
"

imap <C-c> <CR><Esc>O
set completeopt-=preview


let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set runtimepath^=~/.vim/bundle/node
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
"let g:airline_symbols.space = "\ua0"
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_powerline_fonts = 1
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Tabs
map <silent> <C-T> :tabnew<CR>
map <silent> <kPageUp> :tabprevious<CR>
map <silent> <kPageDown> :tabnext<CR>
map <silent> <C-J> :tabprevious<CR>
map <silent> <C-K> :tabnext<CR>
imap <silent> <C-T> <ESC>:tabnew<CR>i
imap <silent> <C-W> <ESC>:tabclose<CR>i
imap <silent> <kPageUp> <C-O>:tabprevious<CR>
imap <silent> <kPageDown> <C-O>:tabnext<CR>
map <silent> <C-H> :tabfirst<CR>
imap <silent> <C-H> <C-O>:tabfirst<CR>

" SYNTAX
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol         = '✗'
let g:syntastic_style_error_symbol   = '✗'
let g:syntastic_warning_symbol       = '⚠'
let g:syntastic_style_warning_symbol = '⚠'

"{{{ENCODING
set encoding=utf-8
set fileencoding=utf-8
"}}}

"{{{ INDENT
set expandtab                                 " no real tabs please!
set autoindent                                " autoindent
set smartindent
set copyindent                                " copiado identado
set shiftwidth=2                              " number of spaces for
set tabstop=2                                 " number of spaces for tab
set softtabstop=2
"}}}
"
set pastetoggle=<F2>
set ruler                                     " show the cursor position all the time
set scrolloff=12                               " scroll off vertical
set sidescrolloff=12                           " scroll off horizontal"
set wildmenu

au VimEnter * :IndentGuidesEnable
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
"let g:syntastic_check_on_open=0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1

"POWER LINE
Bundle 'bling/vim-airline'
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set t_Co=256
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

Bundle 'airblade/vim-gitgutter'
let g:gitgutter_highlight_lines = 1 
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
set cursorline
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

let mapleader = ","

"{{{MAPPINGS
map <silent> tl :tabnext<CR>
map <silent> th :tabprev<CR>
map <silent> tn :tabnew<CR>
map <silent> td :tabclose<CR>

" Cambiar de ventanas
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

nnoremap <silent> <F8> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>
"}}}

map  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap vq :q!<cr>
nnoremap Y y$ 

"visual identation 
vnoremap < <gv
vnoremap > >gv

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

"NERDTree
Bundle 'scrooloose/nerdtree'
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\.md','\.pyc','\.git','\.svn','\.zip','\.jpg','\.odt','\.pdf']

"{{{TO HTML
":ToHtml
let html_number_lines=1
let html_use_css=1
let use_xhtml=1
"}}}

colorscheme badwolf
"let g:airline_theme = 'hybrid'
let g:airline_theme = 'zenburn'
let g:indent_guides_auto_colors = 0 

highlight Folded ctermbg=16
highlight Normal ctermbg=16
highlight IndentGuidesOdd ctermbg=232
highlight IndentGuidesEven ctermbg=236
highlight LineNr ctermbg=16 ctermfg=236
highlight Cursorline cterm=bold ctermbg=16
highlight CursorLineNr cterm=bold ctermbg=16 ctermfg=yellow
highlight WildMenu ctermbg=16 ctermfg=white
highlight Comment ctermfg=234
highlight GitGutterAddLine ctermfg=none
highlight GitGutterAddDefault cterm=bold
highlight GitGutterDeleteLine ctermbg=16
highlight GitGutterChangeLine ctermbg=16
highlight GitGutterAddLine ctermbg=16
highlight airline_tabsel ctermbg=39 ctermfg=16


let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#syntastic#enabled = 1
let g:airline_left_sep = ''
"let g:airline_left_sep = ''
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

set foldlevelstart=1
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
"set foldmethod=syntax
"set foldmethod=indent
set foldnestmax=2
