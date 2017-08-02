set nocompatible              " be iMproved, required
filetype off                  " required

" Initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Utility Plugins
Plugin 'ctrlpvim/ctrlp.vim' " CtrlP to find files
Plugin 'bronson/vim-trailing-whitespace' " :F to remomove white space
Plugin 'tpope/vim-repeat' " Allows other plugins to use . repeats
Plugin 'svermeulen/vim-easyclip' " Fixes copy paste
Plugin 'sjl/gundo.vim' " F5 for undo tree
Plugin 'easymotion/vim-easymotion' " s for quick search motion
Plugin 'Valloric/YouCompleteMe' " quick auto tab complete for many languages
Plugin 'jiangmiao/auto-pairs' " Auto close tags
Plugin 'tpope/vim-fugitive' " Git integration
Plugin 'tpope/vim-commentary' " gc to comment
Plugin 'tpope/vim-surround' " cs to change surround ys to add surround S to add surround in visual mode
Plugin 'nelstrom/vim-visual-star-search' " * search in visual mode
" Syntax Plugins
Plugin 'scrooloose/syntastic' " syntax errors, all of em
Plugin 'pangloss/vim-javascript' " javascript syntax because fml
Plugin 'sheerun/vim-polyglot' " all the language packs I could need
" Environment/Pretty Plugins
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'ap/vim-css-color' " Colorizes hex codes in css
Plugin 'kien/rainbow_parentheses.vim' " Rainbow parens

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"config settings
set wildmenu
set lazyredraw
set showmatch
set tabstop=2
set shiftwidth=2
set expandtab
set expandtab
set backupcopy=yes

"searching
set hlsearch
set incsearch

"set colorscheme
set background=dark
let g:enable_bold_font=1
colorscheme hybrid_material
let g:hybrid_custom_term_colors=1

"Rainbow Parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set nu

"set indent guide
let g:indentLine_char = '|'

"airline fonts
let g:airline_powerline_fonts=1
let g:airline_theme='hybrid'

" enable unicode characters
set encoding=utf8

"set status line messages
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"syntastic
syntax enable                 " enable syntax processing
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set laststatus=2

"fucking get rid of markdown concealing
let g:vim_markdown_conceal = 0


"copy and pasting settings
let g:EasyClipAutoFormat = 1
let g:EasyClipShareYanks = 1
set clipboard=unnamedplus

"youCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion = 1
"gundo
nnoremap <F5> :GundoToggle<CR>

" Easy Motion Config
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <space> <Plug>(easymotion-bd-jk)

" tern mappings
map <Leader>tr :ternRename
map <Leader>td :ternDef

" Ctrl P ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"remapings
inoremap jj <Esc>
nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" \/ to get rid of highlight
nnoremap <silent> <Leader>/ :nohlsearch<CR>
