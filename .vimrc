syntax on
set nocompatible
set number
set guifont=SauceCodePowerline-Regular
set ignorecase
set smartcase
set backspace=2 " more powerful backspacing
imap jk <ESC>
imap kj <ESC>
" change default leader key \ to hard to press on mac
let mapleader = ','

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-h> < gv
vnoremap <C-l> > gv
nnoremap <C-h> <<
nnoremap <C-l> >>

map <ESC>[5D <C-Left>
map <ESC>[5C <C-Right>
map! <ESC>[5D <C-left>
map! <ESC>[5C <C-Right>]]]]


" colorscheme slate
" colorscheme onedark
" colorscheme Tomorrow
let g:solarized_termcolors=256
" colorscheme solarized

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
let g:airline#extensions#tabline#enabled = 1
let g:move_key_modifier = 'A'



call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" airline theme
Plug 'vim-airline/vim-airline-themes'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Javascript syntax highlighting indenting
" Plug 'sheerun/vim-polyglot'

" CommonJS module jumping
Plug 'moll/vim-node'

" linting
Plug 'scrooloose/syntastic'

" Autocomplete
Plug 'Valloric/YouCompleteMe'

" Theme
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'

Plug 'FelikZ/ctrlp-py-matcher'
Plug 'gregsexton/matchtag'
Plug 'Keithbsmiley/tmux.vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'Lokaltog/vim-easymotion'
Plug 'PeterRincker/vim-argumentative'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'Wolfy87/vim-enmasse'
Plug 'Wolfy87/vim-expand'
Plug 'Wolfy87/vim-syntax-expand'
Plug 'adimit/prolog.vim'
Plug 'aklt/plantuml-syntax'
Plug 'andreimaxim/vim-io'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'derekwyatt/vim-scala'
Plug 'embear/vim-localvimrc'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'elzr/vim-json'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-signify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'raymond-w-ko/vim-niji'
" Plug 'rking/ag.vim' " deprecated
Plug 'mileszs/ack.vim'
Plug 'scrooloose/syntastic'
Plug 'sevko/vim-nand2tetris-syntax'
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-leiningen'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'walm/jshint.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx', { 'do': 'rm ~/.vim/plugged/vim-jsx/after/indent/jsx.vim'}
Plug 'beautify-web/js-beautify'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
" Plug 'yggdroot/indentline'
" Plug 'JavaScript-Indent'
Plug 'evidens/vim-twig'
Plug 'jakar/vim-json'

" Add plugins to &runtimepath
call plug#end()

colorscheme gruvbox
set hidden " let's me switch buffers without saving
map <silent> <Right> :bn<CR>
map <silent> <Left> :bp<CR>
map <C-t> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree
let g:miniBufExplModSelTarget = 1


if strftime("%H") < 15 && strftime("%H") > 8
	" colorscheme solarized
	" set background=light
	set background=dark
else
	set background=dark
endif

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" indentation
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'

let delimitMate_expand_cr = 1

" ctrl p ignore .git untracked
" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
	" Use The Silver Searcher
	" https://github.com/ggreer/the_silver_searcher
	set grepprg=ag\ --nogroup\ --nocolor
	" Use ag in CtrlP for listing files. Lightning fast, respects
	" .gitignore
	" and .agignore. Ignores hidden files by default.
	let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
else
	"ctrl+p ignore files in .gitignore
	let g:ctrlp_user_command = ['.git', 'cd %s && git
	ls-files . -co --exclude-standard', 'find %s -type f']
endif

" paste help
set clipboard=unnamed

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" easy motion config 
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" vim asterisk
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)
let g:asterisk#keeppos = 1

" Gundo undo tree viewer
nnoremap <F5> :GundoToggle<CR>
let g:jsx_ext_required = 0
