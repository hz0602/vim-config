" Colorscheme {{{
	set termguicolors
	set background=dark
	colorscheme gruvbox
" }}}

" GUI settings {{{
	if has("gui_running")
		set guifont=CodeNewRoman_Nerd_Font:h14
		set guioptions-=m	" menubar
		set guioptions-=T	" toolbar
		set guioptions-=r	" right scrollbar
		set guioptions-=l	" left scrollbar
		set guioptions-=R
		set guioptions-=L

		autocmd GUIEnter * simalt ~x	" fullscreen
		autocmd GuiEnter * set t_vb=	" 关闭闪屏
	endif
" }}}

" Fundamental settings {{{
" set fillchars=vert:\│

let $LANG = 'en'  "set message language
set langmenu=en   "set menu's language of gvim. no spaces beside '='

syntax enable
set nocompatible
set smartindent
set number
set relativenumber
set tabstop=4 " 按下Tab键后，vim显示的空格数
set noexpandtab " 不自动将Tab转为空格(为了makefile)
set softtabstop=4 " Tab转为多少个空格
set shiftwidth=4 " 缩进空格数
set scrolloff=5 " 垂直滚动时，光标距离顶部/底部的距离（单位：行）
set sidescrolloff=5 " 水平滚动时，光标距离行首或行尾的距离（单位：字符） set textwidth=1000 " 设置行宽，即一行显示多少字符

set laststatus=2
set statusline=%F%m%r%h%w\ \ \ \ CurrentOfLine:\ %l/%L

set hlsearch	" 高亮搜索
set incsearch	" 搜索时自动跳转

set showmode " 显示当前模式

hi WhitespaceEOL guibg=#8e98b2
match WhitespaceEOL /\s\+$/

set showcmd " 显示当前键入的指令
set noswapfile " 不创建交换文件
set history=100 " vim需要记住多少次历史操作
set nrformats= " 将所有数字看成十进制

set wildmenu " 命令模式下按下 Tab 键自动补全
set wildmode=longest:list,full

set encoding=utf-8 " 设置文件的代码形式 utf8
set termencoding=utf-8

set vb t_vb= "关闭响铃、闪屏
set backspace=indent,eol,start " 插入模式下 backspace 有效
set shell=/e/app/msys2/msys2
" }}}

" Keyboard shortcut {{{
let mapleader=","

" Movement
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
onoremap H ^
onoremap L $

" Jump
nnoremap <A-l> <C-]>
nnoremap <A-h> <C-t>
nnoremap <A-k> ''
nnoremap <Leader><A-l> g<C-]>

" Windows size
nnoremap <Leader>1 :resize +1<Cr>
nnoremap <Leader>2 :resize -1<Cr>
nnoremap <Leader>3 :vertical resize +1<Cr>
nnoremap <Leader>4 :vertical resize -1<Cr>

" Tab Navigation
nnoremap <Leader>wl :tabn<Cr>
nnoremap <Leader>wh :tabp<Cr>

" completion
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" clipboard
nnoremap <Leader>p "*p
vnoremap <Leader>p "*p
vnoremap <Leader>y "*y

" Plugin Shortcut
nnoremap <Leader>t :NERDTreeToggle<Cr>
nnoremap <Leader>d :NERDTreeToggle ./<Cr>

" Other
nnoremap <Leader>c :cd %:p:h<Cr>
nnoremap <Leader><Space> :%s/\s\+$//g<Cr>
" }}}

" Vimscript file settings {{{
filetype on
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

hi Normal guibg=NONE ctermbg=NONE
