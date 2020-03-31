call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'trevordmiller/nova-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'qpkorr/vim-bufkill',
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'doums/darcula'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim' 
Plug 'othree/yajs.vim'
call plug#end()

set nobackup
set noswapfile

set autoindent
set copyindent
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

set number
set inccommand=split

colorscheme nova

"Autorun NERDTree upon booting nvim
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


let mapleader="\<space>"
nnoremap <leader>; A<esc>
nnoremap <leader>fed :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>fer :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>fs :w<esc>
nnoremap <leader>ft :NERDTreeToggle<cr>
nnoremap <leader>/ :nohlsearch<cr>

nnoremap <leader>tr :terminal<cr><i>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>wd :BD<cr>
nnoremap <leader>we :q!<cr>

"Cycle through buffers
nnoremap <leader><TAB> :bprevious<cr>
nnoremap <leader>q :bnext<cr>
nnoremap <c-f> :Buffer<cr>

"Force always showing buffers
let g:airline#extensions#tabline#show_tabs = 0
au TermOpen * setlocal bufhidden=hide

"To map <Esc> to exit terminal-mode:
:tnoremap <Esc> <C-\><C-n>

nmap <leader>s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k) 

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]



 

