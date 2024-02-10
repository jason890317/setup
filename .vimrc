set t_Co=256

set nu
set ai
set cursorline
inoremap ( ()<Esc>i
inoremap ' '' <Esc>i
inoremap " ""<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>ko

"autofill"
inoremap <c-x><c-n> <c-n>
"moving between split windows"
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"nerdtree"
nnoremap n<CR> :NERDTree<CR> 

"tlisttoggle"
nnoremap t<CR> :TlistToggle<CR>

"set mouse"
set mouse=a


"save and quit"
nnoremap <c-q> :q<CR>
nnoremap <c-s> :w<CR>

"new tabe and search"
nnoremap <c-\> :tabe<space>
nnoremap \\ :noh<CR>

"page switch"
nnoremap tg gT


"add plug-in for vim"
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'tribela/vim-transparent'
Plug 'mhartington/oceanic-next' 
Plug 'srcery-colors/srcery-vim'
Plug 'garbas/vim-snipmate' 
Plug 'MarcWeber/vim-addon-mw-utils' 
Plug 'tomtom/tlib_vim'
Plug 'rhysd/open-pdf.vim'
call plug#end()

"fix snipmate warning"
let g:snipMate = { 'snippet_version' : 1 }

" set color system"
colorscheme srcery
""colorscheme gruvbox
""colorscheme OceanicNext
""colorscheme nord
if (has("termguicolors"))
   set termguicolors
endif

set tabstop=4

" Load an indent file for the detected file type.
filetype indent on

"more colorful
syntax on

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Highlight cursor line underneath the cursor horizontally.
" 「cterm」用來調整文字上的變化：「none」表示維持不變；「underline」表示增加底線；「bold」可以將文字加粗；「reverse」會將顏色反白。
" 「ctermbg」和「ctermfg」分別用來調整背景色和前景色「ctermbg」和「ctermfg」分別用來調整背景色和前景色
set cursorline
hi CursorLine cterm=none ctermbg=235ctermfg=none

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn


" Do not save backup files.
set nobackup

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


