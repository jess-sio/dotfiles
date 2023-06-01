call plug#begin(stdpath('data') . '/plugged')

Plug 'haya14busa/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'aklt/plantuml-syntax'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/matchit.zip'
Plug 'edkolev/tmuxline.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-datetime'
Plug 'glts/vim-textobj-comment'
Plug 'lucapette/vim-textobj-underscore'
Plug 'jceb/vim-textobj-uri'
Plug 'sgur/vim-textobj-parameter'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/syntastic'

call plug#end()

filetype plugin on

let mapleader = "z"

nmap <F8> :TagbarToggle<CR>

nnoremap <C-n> :NERDTree<CR>

let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s2)
nmap S <Plug>(easymotion-t2)
nmap <leader>h <Plug>(easymotion-linebackward)
nmap <leader>l <Plug>(easymotion-lineforward)
nmap <leader>s <Plug>(easymotion-repeat)
let g:EasyMotion_smartcase = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='violet' " light

map L <Plug>(expand_region_expand)
map H <Plug>(expand_region_shrink)
let g:expand_region_text_objects = {
\ 'iw'  :0,
\ 'iW'  :0,
\ 'i"'  :0,
\ 'i''' :0,
\ 'i]'  :1,
\ 'ib'  :1,
\ 'iB'  :1,
\ 'il'  :0,
\ 'ip'  :0,
\ 'ie'  :0,
\ 'a]'  :1,
\ 'ab'  :1,
\ 'aB'  :1,
\ 'a"'  :0,
\ 'a''' :0,
\ 'i,'  :0,
\ 'a,'  :0,
\ 'i/'  :0,
\ 'i_'  :0,
\ 'iu'  :0,
\ 'ida' :0,
\ }

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map <leader>/ <Plug>(incsearch-fuzzy-/)
map <leader>? <Plug>(incsearch-fuzzy-?)

vnoremap <C-y> "+y
vnoremap <C-p> "+p

let g:textobj_comment_no_default_key_mappings = 1
xmap a/ <Plug>(textobj-comment-a)
omap a/ <Plug>(textobj-comment-a)
xmap i/ <Plug>(textobj-comment-i)
omap i/ <Plug>(textobj-comment-i)
xmap a? <Plug>(textobj-comment-big-a)
omap a? <Plug>(textobj-comment-big-a)

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rainbow_active = 1

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set number
set relativenumber

