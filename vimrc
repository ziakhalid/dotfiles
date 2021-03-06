" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
colorscheme gruvbox
set background=dark

set nocompatible

"up limit commands record, default is 20
set history=200

" Turn on syntax highlighting.
syntax on
" Remove highlighting after search
"nnoremap <esc>:noh<CR><esc>
nnoremap <C-f>ns :noh<CR>

"Spellchecking
set spell spelllang=en_us

"No Spellchecking
"set nospell

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" We do not want to use octal format eg 007 <C-a> = 010 
set nrformats-=octal


" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
"set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Copy to system clipboard as well
set clipboard+=unnamed

" Disable swap file permanently
set noswapfile

"show existing tab with 2 spaces width
set tabstop=4

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" highlight search words in vim
set hlsearch

" enter space inted of tab character
set expandtab


" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Adding unicode character
"➞
inoremap ]]a <c-v>u279e   
"➤
inoremap ]]a2 <c-v>u27a4   
"✅
inoremap ]]st <c-v>u2705
"❎
inoremap ]]sc <c-v>u274e
"░
inoremap ]]p <c-v>u2591


"Bullets
"•
inoremap ]]b <c-v>u2022
"◦
inoremap ]]wb <c-v>u25e6
"⦿
inoremap ]]cb <c-v>u29bf
"⁃
inoremap ]]hb <c-v>u2043
"▪
inoremap ]]sb <c-v>u25aa
"▣
inoremap ]]wsb <c-v>u25a3
"‣
inoremap ]]tb <c-v>u2023
"❯
inoremap ]]ab <c-v>u276f


" These create newlines like o and O but stay in normal mode
nnoremap zj o<Esc>k
nnoremap zk O<Esc>j


let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar


"NERDTree
nnoremap <C-n>f :NERDTreeFocus<CR>
nnoremap <C-n>n :NERDTree<CR>
nnoremap <C-n>t :NERDTreeToggle<CR>
nnoremap <C-n>fi :NERDTreeFind<CR>


