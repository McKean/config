syntax on
set backupdir=$TMPDIR//
set directory=$TMPDIR//
set nocompatible
set ttyfast
set lazyredraw
set nowrap
set number
set guifont=SauceCodePowerline-Regular
set ignorecase
set smartcase
set autoindent
set visualbell
set noerrorbells
set title
set nobackup
set noswapfile
set backspace=2 " more powerful backspacing
set pastetoggle=<F2>
set mouse=a
imap jk <ESC>
imap kj <ESC>
" change default leader key \ to hard to press on mac
let mapleader = ','

" if swap file then put it there
:set directory=$HOME/.vim/swapfiles//

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
" vnoremap <C-h> < gv
" vnoremap <C-l> > gv
" nnoremap <C-h> <<
" nnoremap <C-l> >>

map [5D <C-Left>
map [5C <C-Right>
map! [5D <C-left>
map! [5C <C-Right>]]]]


" colorscheme slate
" colorscheme onedark
" colorscheme Tomorrow
let g:solarized_termcolors=256
" colorscheme solarized

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
let g:airline#extensions#tabline#enabled = 1
let g:move_key_modifier = 'A'



call plug#begin('~/.vim/plugged')

" Plug 'jooize/vim-colemak'

" Make sure you use single quotes

" airline theme
Plug 'vim-airline/vim-airline-themes'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Javascript syntax highlighting indenting
" Plug 'sheerun/vim-polyglot'

" CommonJS module jumping
Plug 'moll/vim-node'

" linting
Plug 'scrooloose/syntastic'


" Theme
" Plug 'altercation/vim-colors-solarized'
" Plug 'flazz/vim-colorschemes'
Plug 'moll/vim-bbye'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'gregsexton/matchtag'
Plug 'Keithbsmiley/tmux.vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'Lokaltog/vim-easymotion'
Plug 'PeterRincker/vim-argumentative'
Plug 'Raimondi/delimitMate'
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
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-signify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'raymond-w-ko/vim-niji'
" Plug 'rking/ag.vim' " deprecated
Plug 'mileszs/ack.vim'
Plug 'sevko/vim-nand2tetris-syntax'
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-leiningen'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
if !has('nvim')
    Plug 'tpope/vim-sensible'
    " Autocomplete
    Plug 'Valloric/YouCompleteMe'
    Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
    " make YCM compatible with UltiSnips (using supertab)
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    let g:SuperTabDefaultCompletionType = '<C-n>'
else
    Plug 'benekastah/neomake'
    Plug 'w0rp/ale'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
    set completeopt=longest,menuone,preview
    let g:deoplete#sources = {}
    let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
    let g:tern#command = ['tern']
    let g:tern#arguments = ['--persistent']
    " deoplete tab-complete
    autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
    let g:UltiSnipsExpandTrigger="<C-j>"
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    " close scratch window automatically
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
    " close the preview window when you're not using it
    let g:SuperTabClosePreviewOnPopupClose = 1
    " Use deoplete.
    let g:tern_request_timeout = 1
    let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

    "Add extra filetypes
    let g:tern#filetypes = [
		\ 'jsx',
		\ 'javascript.jsx',
		\ 'vue',
		\ '...'
		\ ]
    " tern
    autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
    Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
endif
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
Plug 'nelsyeung/twig.vim'
Plug 'jakar/vim-json'
" ctags use this for mac https://github.com/universal-ctags/homebrew-universal-ctags
Plug 'majutsushi/tagbar'
Plug 'kana/vim-gf-user'
Plug 'hotoo/jsgf.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-dispatch'
Plug 'rizzatti/dash.vim'
" time tracking wakatime
Plug 'wakatime/vim-wakatime'
Plug 'editorconfig/editorconfig-vim'
" writes html faster with shorthands
Plug 'rstacruz/sparkup'
" Automatically create imports for javascript
Plug 'trotzig/import-js'
" Scratchpad auto display results
Plug 'metakirby5/codi.vim'
" writing papers using vim this highlights your current passage
Plug 'junegunn/limelight.vim'
" Wiki for personal use
Plug 'vimwiki/vimwiki'
" Todo lists
Plug 'vitalk/vim-simple-todo'

let g:vimwiki_list = [{'path':'~/Dropbox/vimwiki'}]

" Add plugins to &runtimepath
call plug#end()

colorscheme gruvbox
set hidden " let's me switch buffers without saving
map <silent> <c-l> :bn<CR>
map <silent> <c-h> :bp<CR>
map! <silent> <c-l> <ESC> :bn<CR>
map! <silent> <c-h> <ESC> :bp<CR>
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

" Syntastic Configuration
" -----------------------------------------------------

" let g:syntastic_enable_signs=1                                                  
" let g:syntastic_coffee_coffeelint_args = "--csv --file config.json"
" let g:syntastic_javascript_eslint_exe = 'npm run eslint --'
if !has('nvim')
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_javascript_checkers = ['eslint']
    let g:syntastic_javascript_eslint_exe = 'eslint_d'
    highlight SyntasticErrorLine guibg=#2f0000
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    highlight link SyntasticErrorSign SignColumn
    highlight link SyntasticWarningSign SignColumn
    highlight link SyntasticStyleErrorSign SignColumn
    highlight link SyntasticStyleWarningSign SignColumn
else
    let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
    let g:ale_sign_error = 'x'
    let g:ale_sign_warning = '⚠'
    " let g:neomake_javascript_jshint_maker = {
    " \ 'args': ['--verbose'],
    " \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    " \ }
    " let g:neomake_javascript_enabled_makers = ['eslint']
    " let g:neomake_open_list = 2
    " autocmd! BufWritePost * Neomake
endif


" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1

" Allows to toggle the error's window visibility
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
	" Nothing was closed, open syntastic error
	" location panel
	Errors
    endif
endfunction

" Bind toggleErrors to <F2> 
"noremap <silent> <C-e> : call ToggleErrors()<CR>
nnoremap <C-e> :<C-u>call ToggleErrors()<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

" ctags
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nnoremap ü <C-]>
nnoremap è <C-O>

" keep window in takt when removing buffer
command! Bd bp | sp | bn | bd

" for gf
" set suffixesadd+=.js
augroup suffixes
    autocmd!

    let associations = [
		\["javascript", ".js,index.js,.javascript,.es,.esx,.json"],
		\["python", ".py,.pyw"]
		\]

    for ft in associations
	execute "autocmd FileType " . ft[0] . " setlocal suffixesadd=" . ft[1]
    endfor
augroup END
set path+=$PWD/src/
set path+=$PWD/../src

" ignore tidy html for mixed content 
let g:syntastic_filetype_map = { 'html.twig': 'twig' }

" RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" let g:rspec_command = "ava {spec}"
" let g:rspec_command = "echo 'hello'"
" let g:rspec_runner = "os_x_iterm2"

" dispatch
autocmd FileType javascript let b:dispatch = 'env NODE_PATH=src ava % --verbose'
autocmd FileType javascript.jsx let b:dispatch = 'env NODE_PATH=src ava % --verbose'

" Dash
let g:dash_map = {'javascript': ['js'], 'javascript.jsx': ['js', 'react']}

" Buffer handling
:nnoremap <Leader>q :Bdelete<CR>
:nnoremap <Leader>a :bufdo :Bdelete<CR>
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>

" prettier formatting on save
" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
autocmd FileType javascript set formatprg=prettier\ --single-quote\ --parser\ flow\ --stdin
