" Start vundle stuff
syntax on
set clipboard=unnamed
set number
set tabstop=4 shiftwidth=4 expandtab

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on 
" End vundle stuff
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nowrap
syntax on

"after typing '/*<enter>', it moves to the next line and inserts the <space>*<space> for you
set formatoptions+=r
"set mouse=a

"enables shift-tab to unindent
imap <S-Tab> <C-d>

"control up moves the screen one line up
nnoremap <C-Up> <C-y>
"control down moves the screen one line down
nnoremap <C-Down> <C-e>
"make i, j, k, l become up, left, down, right instead of using k, h, j, l for
"that purpose. 'h' is now insert
nnoremap h i
nnoremap i k
nnoremap k j
nnoremap j h
"to mark a spot in the file to return to it use m[letter] then to return to it later use `[letter]

"sets easy toggle of highlighted search by pressing control-h
let hlstate=0
nnoremap <C-h> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

"remove trailing whitespace by pressing F5
nnoremap <F7> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"writes what is in the "0 register to the file
"use by :call WriteToFile("filename")
function WriteToFile(file)
    call writefile(split(@@, "\n", 1), a:file)
endfunction
