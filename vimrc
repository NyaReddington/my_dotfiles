" -----------------------------------------------------------------------------
"  < 界面配置 >
" -----------------------------------------------------------------------------
set number                                            "显示行号
syntax on					      "设置代码高亮

set background=dark                                   "设置主题
colorscheme hybrid

set laststatus=2                                      "启用状态栏信息
set ruler                                             "显示光标当前位置
set cursorline                                        "突出显示当前行
set pastetoggle=<F2>                                  "按F2进入粘贴模式
set hlsearch                                          "高亮搜索
set incsearch					      "增量搜索
set ignorecase					      "搜索时忽略大小写
set smartcase					      "如果存在大写字符，则不忽略任何大小写
set foldmethod=indent                                 "设置折叠方式


" -----------------------------------------------------------------------------
"  < 映射配置 >
" -----------------------------------------------------------------------------
let mapleader="\<space>"                              "把leader键映射为空格
inoremap jj <Esc>`^                                   "使用 jj 进入 normal 模式

inoremap <leader>w <Esc>:w<CR>                        "使用 leader+w 直接保存
noremap <leader>w :w<CR>

nnoremap <silent> [b :bprevious<CR>                   "切换buffer
nnoremap <silent> [n :bnext<CR>

noremap <C-h> <C-w>h                                  "使用 ctrl+h/j/k/l 切换window
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

cnoremap w!! w !sudo tee % >/dev/null                 "使用 sudo 强制写入
com! FormatJSON %!python3 -m json. tool               "json格式化 是命令模式下的映射
nnoremap <leader>v :NERDTreeToggle<CR>                "使用 leader+v 打开Nerdtree
nnoremap <leader>g ggVG				      "使用 leader+g 实现全选
nnoremap U <C-r>				      "使用 U 取消 u  的撤销操作



"-----------------------------------------------------------------------------
"  < 插件设置，这里使用vim-plug >
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')                     "指定插件目录

Plug 'mhinz/vim-startify'                             "修改启动页面插件
Plug 'scrooloose/nerdtree'                            "文件目录插件

Plug 'vim-airline/vim-airline'                        "状态栏美化插件
Plug 'vim-airline/vim-airline-themes'

Plug 'yggdroot/indentline'                            "增加代码缩进线条插件
Plug 'w0ng/vim-hybrid'                                "hybrid主题
Plug 'kristijanhusak/vim-hybrid-material'             "hybrid-material主题
Plug 'sheerun/vim-polyglot'                           "多语言语法高亮包插件
Plug 'jiangmiao/auto-pairs'		  	      "括号/引号自动补齐插件

call plug#end()                                       "初始化插件系统
