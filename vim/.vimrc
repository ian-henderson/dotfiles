"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ian Henderson's .vimrc File



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim

" Remove support for vi
set nocompatible

" Remove trailing whitespace on write
autocmd BufWritePre * %s/\s\+$//e

" Source config file
nnoremap <Leader>s :source $MYVIMRC<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen & Plugins

execute pathogen#infect()
syntax on
filetype plugin indent on

" vim-closetag https://github.com/alvan/vim-closetag
let g:closetag_filenames='*.html,*.js,*.blade.php'

" vim-jsx https://github.com/mxw/vim-jsx
let g:jsx_ext_required=0

" vim-solarized8 https://github.com/lifepillar/vim-solarized8
fun! Solarized8Contrast(delta)
    let l:schemes = map(["_low", "_flat", "", "_high"], '"solarized8_".(&background).v:val')
    exe "colors" l:schemes[((a:delta+index(l:schemes, g:colors_name)) % 4 + 4) % 4]
endf
nmap <leader>- :<c-u>call Solarized8Contrast(-v:count1)<cr>
nmap <leader>= :<c-u>call Solarized8Contrast(+v:count1)<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme

" 256 Colors
set t_Co=256
let hour = strftime('%H')
if hour > 8 && hour < 17
    set background=light
    colorscheme solarized8_light
else
    set background=dark
    colorscheme solarized8_dark
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Finding Files

set ignorecase
set incsearch
set path+=**
set smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignorecase
set wildmenu
set wildmode=list:full
set wrapscan

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[] ]



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Finding Files

set ignorecase
set incsearch
set path+=**
set smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignorecase
set wildmenu
set wildmode=list:full
set wrapscan

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[] ]



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation

set autoindent
set breakindent
set smarttab

" :h 'tabstop' option 2
set tabstop=4
set shiftwidth=4
set expandtab



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface

set backspace=2
set cmdheight=1  " default: 1
set cursorline
set lazyredraw
set linebreak
set mouse=a
set number
set relativenumber
set ruler
set showcmd
set startofline
set title

" List buffers shortcut
nnoremap gb :ls<CR>:b<Space>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MacVim

if has('gui_macvim')
    let hour = strftime('%H')
    set guifont=Monoid\ Retina:h12
    set guioptions=acei  " default: 'egmrLtT' - see :h 'guioptions' for more
    set lines=24 columns=84
    set linespace=4  " default: 0
    set macligatures
endif
