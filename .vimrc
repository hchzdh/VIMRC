"�����ļ�����
let &termencoding=&encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=cp936
set langmenu=zh_CN.utf-8

"����VIM�ĵ�ǰĿ¼Ϊ��ǰ�༭�ļ�����Ŀ¼
"set autochdir

"ʹ���ļ�ʱʹ���ͣ�����ϴι���λ��
au BufReadPost * if line("'\"") >1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"����VIMʱִ��һ��nohlsearch
exec "nohlsearch"

"��TAB��ʱ��ʾ��ʾ�˵�
set wildmenu

"����leader
let mapleader=' '

"ӳ��༭ģʽ�µ�ESC��
inoremap jk <esc>`^
inoremap jj <esc>`^
inoremap kk <esc>`^

"ӳ��sΪ�޲�����ӳ���дSΪ����װ�������ļ�
nnoremap s <nop>
nnoremap S :source $MYVIMRC<cr>

"ӳ���޸ĵ���
nnoremap cw ciw

"ӳ��������һ������һ����ʹ���������з�������Ļ����
nnoremap = nzz
nnoremap - Nzz

"ӳ�䷵�����׵�һ���ǿ��ַ��İ���
nnoremap H ^

"ӳ�䷵����β�İ���
nnoremap L $

"ӳ���������еİ���
nnoremap J 5j

"ӳ���������еİ���
nnoremap K 5k

"ӳ�����ģʽ��ʼ�����ı��İ���
vnoremap i I

"��ת���ϴα༭��λ��
nnoremap go <c-o>
nnoremap gi <c-i>

"ӳ��<leader>q Ϊǿ���˳�
nnoremap <leader>q :q!<cr>

"ӳ��<leader><space>Ϊȡ���������������ı�
nnoremap <leader><cr> :nohlsearch<cr>

"�Թ���ԱȨ��д���ļ�
nnoremap <leader>w :w !sudo tee %<cr><cr>

"����ȫ�ֲ��Ҳ��滻�����
nnoremap <leader>s :%s///gc<left><left><left>

"���������ģʽ
nnoremap <leader>v <c-V>
"ȡ������ģʽ
vnoremap <leader><cr> <esc><esc>

"��ƥ������ż��л�
nnoremap t %

"ӳ������ΪU
nnoremap U <c-r>

"ӳ���滻��ǰ�ַ�Ϊ�����滻ģʽ
"nnoremap r R
"nnoremap R r

"ӳ�临�Ƶ���β����
nnoremap yl y$

"ӳ�临�Ƶ���������
nnoremap yh y^

"ӳ��ɾ������β����
nnoremap dl d$

"ӳ��ɾ������������
nnoremap dh d^

"ӳ�临�Ƶ�ϵͳ������
set clipboard=unnamedplus
vnoremap Y "+y

"ӳ����ģʽ�µĹ���ƶ�����
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <down>
inoremap <c-k> <up>
nnoremap <c-h> <left>
nnoremap <c-l> <right>
nnoremap <c-j> <down>
nnoremap <c-k> <up>

"ӳ���������
nnoremap sh :set nosplitright<cr>:vsplit<cr>
nnoremap sl :set splitright<cr>:vsplit<cr>
nnoremap sj :set splitbelow<cr>:split<cr>
nnoremap sk :set nosplitbelow<cr>:split<cr>

"�л�����
nnoremap W <c-w>w
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k

"�ı������д
nnoremap <c-up> :resize +5<cr>
nnoremap <c-down> :resize -5<cr>
nnoremap <c-left> :vertical resize-5<cr>
nnoremap <c-right> :vertical resize+5<cr>

"��ˮƽ�ָ�Ĵ��ڸ�Ϊ��ֱ�ָ�
nnoremap sv <c-w>t<c-w>H
"����ֱ�ָ�Ĵ��ڸ�Ϊˮƽ�ָ�
nnoremap ss <c-w>t<c-w>K

"��ǩҳ����
nnoremap <leader>t :tabe<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap T :tabnext<cr>
nnoremap <s-tab> :tabnext<cr>

"ӳ����������(����ظ��ϴ������'.'ʹ��)
"nnoremap <a-h> <<
"nnoremap <a-l> >>
"vnoremap <a-h> <
"vnoremap <a-l> >

"�����﷨����
syntax on

"����ƴд���
nnoremap sc :set spell!<cr>
exec "set nospell"

"����ʹ��256ɫ
let &t_ut=''
set t_Co=256

"--------
"��������
"--------
"����������������
set hlsearch
"����ƥ�������
set showmatch
"������������
set incsearch
"����ʱ���Դ�Сд
set ignorecase
"��������������Сд
set smartcase
"��������ģʽ(���������в����)
set nocompatible

"������ʾ�кż���ǰ��ɫ�ͱ���ɫ
set number
set norelativenumber
hi linenumber   ctermbg=236     ctermfg=white

"���������е�ǰ��ɫ�ͱ���ɫ
hi commandline  ctermbg=none    ctermfg=white

"�����������������
set cursorline
"set cursorcolumn

"���ù�����������е���ɫ
hi cursorline   cterm=none ctermbg=236 ctermfg=none
hi cursorcolumn cterm=none ctermbg=236 ctermfg=none

"����״̬����ǰ��ɫ�ͱ���ɫ
hi statusline   cterm=none ctermbg=236 ctermfg=white

"���ò��Զ�����
"set nowrap
set tw=0

"֧�����
set mouse=a

"��ʾ��ǰģʽ
set showmode

"��ʾ���������
set showcmd

"������ʾ��ǰ�ļ���
set title

"��ʾ״̬��
set laststatus=2

"�����Զ�����
set autoindent

"������������
set smartindent

"����TAB�����Ϊ4���ַ�
set tabstop=4
set softtabstop=4
set shiftwidth=4

"�ÿո��滻TAB��
set expandtab

"�����ı��༭���Ϊ100���ַ�
set textwidth=200

"���ļ������������޸ĺ��Զ���ȡ�ͱ����ļ�
set autoread
set autowrite

"��ʾ���ɴ�ӡ�������ַ�
set list
"����TAB�ַ�����β�ո����ʾ��ʽ
set listchars=tab:>\ ,trail:.
"���õ������ƶ����ʱ�ϲ����²���ʾ����������
set scrolloff=5

set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99

"�ļ����ͼ��ļ����Ͷ�Ӧ������
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"���ģʽ����
"  1 -> ��˸����(blinking block)
"  2 -> ����˸����(solid block)
"  3 -> ��˸�»���(blinking underscore)
"  4 -> ����˸�»���(solid underscore)
"  5 -> ��˸����(blinking vertical bar)
"  6 -> ����˸����(solid vertical bar)
let &t_SI="\<esc>[5 q" "����ģʽ�����״����
let &t_SR="\<esc>[2 q" "�滻ģʽ�����״����
let &t_EI="\<esc>[1 q" "����ģʽ�����״����

"let &t_SI="\e[5 q" "����ģʽ�����״����
"let &t_SR="\e[2 q" "�滻ģʽ�����״����
"let &t_EI="\e[1 q" "����ģʽ�����״����

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

"��ʾ������NERDTree����
nnoremap tt :NERDTreeToggle<cr>
