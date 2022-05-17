let mapleader=" "
syntax on
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase
set tabstop=4
set ai
set sw=4
set ts=4
set spell

"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>
noremap <A-b> :MarkdownPreview<CR>
noremap <C-\> <C-\>n
noremap <C-j> 5j
noremap <C-k> 5k
noremap <silent> <leader>f :Format<CR>
noremap <silent> <leader>F :FormatWrite<CR>
" Alt+o 打开 ranger                                       
nnoremap <silent> <A-o> :RnvimrToggle<CR>
"Alt+加号 切换至下一个标签，减号则是切换回上一个 
nnoremap <A--> :bn<CR>


"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
filetype on
filetype indent on
syntax enable

"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'skywind3000/vim-terminal-help'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'mhartington/formatter.nvim'
" ” markdown预览
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" tab键补全功能插件
Plug 'ervandew/supertab'
" vim-snazzy 主题插件
Plug 'connorholyday/vim-snazzy'
" Coc 智能补全插件引擎
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vim-airline 标签栏插件
Plug 'Vim-airline/vim-airline'
" vim-airline 标签栏插件的主题插件
Plug 'vim-airline/vim-airline-themes'
" ranger 文件浏览器
Plug 'kevinhwang91/rnvimr'
" vim-startify 插件
Plug 'mhinz/vim-startify'
" 控制窗口
Plug 'christoomey/vim-tmux-navigator'
" 目录树
Plug 'preservim/nerdtree'
" 注释与反注释
Plug 'preservim/nerdcommenter'
" python 函数文档
Plug 'kkoomen/vim-doge'
" 代码对齐
Plug 'junegunn/vim-easy-align'
" 彩虹括号
Plug 'luochen1990/rainbow'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
colorscheme snazzy
let g:SnazzyTransparent = 1
" 配置 vim-airline 标签栏插件
let g:airline#extensions#tabline#enabled = 1
" 配置 ranger 文件浏览器插件
let g:rnvimr_ex_enable = 1   
" 指定浏览器路径
let g:mkdp_path_to_chrome = '~/.config/google-chrome'  
" 指定预览主题，默认Github
let g:mkdp_markdown_css=''

"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" NERDTree settings
" open a NERDTree automatically when vim starts up if no files were specified    
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree automatically when vim starts up on opening a directory    
autocmd StdinReadPre * let s:std_in=1    
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Let NERDTree igonre files
let NERDTreeIgnore = ['\.pyc$', '\.swp$']

" 注释与反注释
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" python 函数
"let g:doge_doc_standard_python = 'numpy'
"let g:doge_doc_standard_python = 'google'
let g:doge_doc_standard_python = 'reST'

" 代码对齐
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" 彩虹括号配置
let g:rainbow_active = 1
