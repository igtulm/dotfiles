" spacevim theme install: bash <(curl -fsSL https://raw.githubusercontent.com/liuchengxu/space-vim/master/install.sh)
" need to install ag silver searcher

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

" ctrl+p fast file open using ag silver searcher
Plug 'ctrlpvim/ctrlp.vim'

" buffer explorer: be, bt, bs, bv
Plug 'jlanzarotta/bufexplorer'

" git changes
Plug 'airblade/vim-gitgutter'

" surround words with symbol. example: ysiw' and ds'
Plug 'tpope/vim-surround'

" JS identation and syntax plugin
Plug 'pangloss/vim-javascript'
" VueJS syntax plugin
Plug 'posva/vim-vue'

" clang-format for cpp
Plug 'rhysd/vim-clang-format'


call plug#end()

let mapleader="\<Space>"

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

map <Leader> <Plug>(easymotion-prefix)

" ctrlP settings
if executable('ag')
  " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast, respects .gitignore and .agignore.
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -f -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
else
  " ctrl+p ignore files in .gitignore
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif

" clang format settings
autocmd FileType c,h,cpp,hpp,cc,tcc ClangFormatAutoEnable

" buf explorer
nnoremap <leader>b :BufExplorer<CR>

