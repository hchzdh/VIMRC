"设置文件编码
let &termencoding=&encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=cp936
set langmenu=zh_CN.utf-8

"设置VIM的当前目录为当前编辑文件所在目录
"set autochdir

"使打开文件时使光标停留在上次光标的位置
au BufReadPost * if line("'\"") >1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"启动VIM时执行一次nohlsearch
exec "nohlsearch"

"按TAB键时显示提示菜单
set wildmenu

"设置leader
let mapleader=' '

"映射编辑模式下的ESC键
inoremap jk <esc>`^
inoremap jj <esc>`^
inoremap kk <esc>`^

"映射s为无操作并映射大写S为重新装载配置文件
nnoremap s <nop>
nnoremap S :source $MYVIMRC<cr>

"映射修改单词
nnoremap cw ciw

"映射搜索上一个和下一个并使搜索到的行放置在屏幕中央
nnoremap = nzz
nnoremap - Nzz

"映射返回行首第一个非空字符的按键
nnoremap H ^

"映射返回行尾的按键
nnoremap L $

"映射下移三行的按键
nnoremap J 5j

"映射上移三行的按键
nnoremap K 5k

"映射可视模式开始插入文本的按键
vnoremap i I

"跳转到上次编辑的位置
nnoremap go <c-o>
nnoremap gi <c-i>

"映射<leader>q 为强制退出
nnoremap <leader>q :q!<cr>

"映射<leader><space>为取消高亮搜索到的文本
nnoremap <leader><cr> :nohlsearch<cr>

"以管理员权限写入文件
nnoremap <leader>w :w !sudo tee %<cr><cr>

"定义全局查找并替换命令按键
nnoremap <leader>s :%s///gc<left><left><left>

"进入可视列模式
nnoremap <leader>v <c-V>
"取消可视模式
vnoremap <leader><cr> <esc><esc>

"在匹配的括号间切换
nnoremap t %

"映射重做为U
nnoremap U <c-r>

"映射替换当前字符为进入替换模式
"nnoremap r R
"nnoremap R r

"映射复制到行尾命令
nnoremap yl y$

"映射复制到行首命令
nnoremap yh y^

"映射删除到行尾命令
nnoremap dl d$

"映射删除到行首命令
nnoremap dh d^

"映射复制到系统剪贴板
set clipboard=unnamedplus
vnoremap Y "+y

"映射标记模式下的光标移动按键
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <down>
inoremap <c-k> <up>
nnoremap <c-h> <left>
nnoremap <c-l> <right>
nnoremap <c-j> <down>
nnoremap <c-k> <up>

"映射分屏操作
nnoremap sh :set nosplitright<cr>:vsplit<cr>
nnoremap sl :set splitright<cr>:vsplit<cr>
nnoremap sj :set splitbelow<cr>:split<cr>
nnoremap sk :set nosplitbelow<cr>:split<cr>

"切换窗口
nnoremap W <c-w>w
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k

"改变分屏大写
nnoremap <c-up> :resize +5<cr>
nnoremap <c-down> :resize -5<cr>
nnoremap <c-left> :vertical resize-5<cr>
nnoremap <c-right> :vertical resize+5<cr>

"将水平分割的窗口改为竖直分割
nnoremap sv <c-w>t<c-w>H
"将竖直分割的窗口改为水平分割
nnoremap ss <c-w>t<c-w>K

"标签页操作
nnoremap <leader>t :tabe<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap T :tabnext<cr>
nnoremap <s-tab> :tabnext<cr>

"映射左右缩进(配合重复上次命令键'.'使用)
"nnoremap <a-h> <<
"nnoremap <a-l> >>
"vnoremap <a-h> <
"vnoremap <a-l> >

"开启语法高亮
syntax on

"开关拼写检查
nnoremap sc :set spell!<cr>
exec "set nospell"

"设置使用256色
let &t_ut=''
set t_Co=256

"--------
"搜索设置
"--------
"开启高亮搜索内容
set hlsearch
"高亮匹配的括号
set showmatch
"开启增量搜索
set incsearch
"搜索时忽略大小写
set ignorecase
"开启智能搜索大小写
set smartcase
"开启兼容模式(具体作用尚不清楚)
set nocompatible

"设置显示行号及其前景色和背景色
set number
set norelativenumber
hi linenumber   ctermbg=236     ctermfg=white

"设置命令行的前景色和背景色
hi commandline  ctermbg=none    ctermfg=white

"高亮光标所在行与列
set cursorline
"set cursorcolumn

"设置光标所在行与列的颜色
hi cursorline   cterm=none ctermbg=236 ctermfg=none
hi cursorcolumn cterm=none ctermbg=236 ctermfg=none

"设置状态栏的前景色和背景色
hi statusline   cterm=none ctermbg=236 ctermfg=white

"设置不自动换行
"set nowrap
set tw=0

"支持鼠标
set mouse=a

"显示当前模式
set showmode

"显示输入的命令
set showcmd

"标题显示当前文件名
set title

"显示状态栏
set laststatus=2

"开启自动缩进
set autoindent

"开启智能缩进
set smartindent

"设置TAB键宽度为4个字符
set tabstop=4
set softtabstop=4
set shiftwidth=4

"用空格替换TAB键
set expandtab

"设置文本编辑宽度为100个字符
set textwidth=200

"当文件被其它程序修改后自动读取和保存文件
set autoread
set autowrite

"显示不可打印的特殊字符
set list
"设置TAB字符和行尾空格的显示方式
set listchars=tab:>\ ,trail:.
"设置当上下移动光标时上部或下部显示的最少行数
set scrolloff=5

set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99

"文件类型及文件类型对应插件检查
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"光标模式设置
"  1 -> 闪烁方块(blinking block)
"  2 -> 不闪烁方块(solid block)
"  3 -> 闪烁下划线(blinking underscore)
"  4 -> 不闪烁下划线(solid underscore)
"  5 -> 闪烁竖线(blinking vertical bar)
"  6 -> 不闪烁竖线(solid vertical bar)
let &t_SI="\<esc>[5 q" "插入模式光标形状定义
let &t_SR="\<esc>[2 q" "替换模式光标形状定义
let &t_EI="\<esc>[1 q" "正常模式光标形状定义

"let &t_SI="\e[5 q" "插入模式光标形状定义
"let &t_SR="\e[2 q" "替换模式光标形状定义
"let &t_EI="\e[1 q" "正常模式光标形状定义

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

"color snazzy
"let g:SnazzyTransparent = 1

"显示或隐藏NERDTree窗口
nnoremap tt :NERDTreeToggle<cr>
