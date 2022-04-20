syntax on

let mapleader=" "

set hlsearch
set ai
set si
set shiftwidth=2
set wildmenu
set showtabline=2
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

filetype indent on
filetype plugin indent off

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords


noremap <leader>j :w<CR><Esc>:bd!<CR><Esc>:Explore<CR>
noremap <leader>y "*y
noremap <leader>p "+p
noremap <leader>t <Esc>:tabnew<CR>:Explore<CR>
noremap <leader>[ <Esc>:tabp<CR>
noremap <leader>] <Esc>:tabn<CR>
noremap . :s/^/#<CR><Esc>:nohl<CR><C-l>
nnoremap <Esc><Esc> :nohl<CR><C-l>


call plug#begin()

" Use release branch (recommend)
Plug 'https://github.com/neovimhaskell/haskell-vim.git'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
syntax on
filetype plugin indent on
