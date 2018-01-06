" spacevim theme install: bash <(curl -fsSL https://raw.githubusercontent.com/liuchengxu/space-vim/master/install.sh)

scriptencoding utf-8

let g:MAC = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')

let g:spacevim_dir = $HOME.'/.space-vim'
let g:spacevim_core_dir = '/core'
let g:spacevim_version = '0.6.0'
set runtimepath+=$HOME/.space-vim/core
call spacevim#begin()
Layer 'spacevim'
call spacevim#end()

call plug#begin('~/.vim/plugged')

Plug 'liuchengxu/space-vim-dark'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'

Plug 'dominikduda/vim_current_word'

Plug 't9md/vim-choosewin'

Plug 'tpope/vim-rsi'

Plug 'kshenoy/vim-signature'

Plug 'mhinz/vim-startify'

" auto completion framework
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" easy window swap
Plug 'wesQ3/vim-windowswap'

Plug 'easymotion/vim-easymotion'

" improved search
Plug 'haya14busa/incsearch.vim'

" JS identation and syntax plugin
Plug 'pangloss/vim-javascript'
" VueJS syntax plugin
Plug 'posva/vim-vue'


call plug#end()

let mapleader=","

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

map <Leader> <Plug>(easymotion-prefix)
