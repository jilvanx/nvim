call plug#begin()
  " themes
  " Plug 'morhetz/gruvbox'
  " Plug 'dikiaap/minimalist'  
  Plug 'dracula/vim', { 'as': 'dracula' }

  Plug 'terryma/vim-multiple-cursors'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'ncm2/ncm2'                                      " autocomplete
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-path'                                 " path autocomplete
  Plug 'ncm2/ncm2-bufword'                              " buffer autocomplete
  Plug 'TyberiusPrime/ncm2-bufline'                     " current buffer for completion
  Plug 'ncm2/ncm2-cssomni'                              " css autocomplete
  Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}         " javascript autocomplete
  Plug 'ncm2/nvim-typescript', {'do': './install.sh'}   " typescript autocomplete
  Plug 'ncm2/ncm2-ultisnips'                            " based on ultisnips

  Plug 'dense-analysis/ale'                             " lint
  Plug 'jiangmiao/auto-pairs'                           " auto-pairs
  Plug 'SirVer/ultisnips'                               " snippets
  "Snippets are separated from the engine. Add this if you want them:
  Plug 'honza/vim-snippets'

  Plug 'vim-airline/vim-airline'                        "status/tabline 
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nathanaelkane/vim-indent-guides'                " indent guides line
  Plug 'mattn/emmet-vim'                                " emmet
  Plug 'scrooloose/nerdtree'                            " file explorer
  Plug 'ryanoasis/vim-devicons'
  Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

colorscheme dracula         " theme

syntax on                   " syntax highlighting

set encoding=utf8           " encoding set to UTF-8 for the glyphs to show
set hidden                  " buffer files
set inccommand=split        " see previous changes
set encoding=utf-8          " set encondig
set showmatch               " show matching brackets.
set number                  " add line numbers
set relativenumber
set nowrap                  " No wrap
set background=dark
set hlsearch                " highlight search results
set mouse=v                 " middle-click paste with mouse
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set cc=100                  " set an 80 column border for good coding style
set ruler
set showmode

filetype plugin indent on   " allows auto-indenting depending on file type

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

inoremap <C-s> <esc>:w!<cr>i
nnoremap <C-s> :w!<cr>
nnoremap <C-q> :q!<cr>
noremap <C-f> :/\c
nnoremap <C-b> :Files<cr>
nnoremap <C-F3> :Ag<space>
nnoremap <C-a> ggVG
map <F3> :NERDTreeToggle<cr>
map <F12> :PlugInstall <cr>

" Open NERDTree on startup
autocmd vimenter * NERDTree
" Close NERDTree when exists
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"let g:python3_host_prog='/usr/bin/python3'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit= 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

" Guides line
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:NERDTreeDirArrowExpandable = '✚'
let g:NERDTreeDirArrowCollapsible = '➜'

" File explorer:
" NERDTress Ctrl+n
"nnoremap <C-n> :NERDTreeToggle<CR>
" NERDTress File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
" exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction
"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

