set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nowrap

"after typing '/*<enter>', it moves to the next line and inserts the <space>*<space> for you
set formatoptions+=r
"set mouse=a

"enables shift-tab to unindent
imap <S-Tab> <C-d>

"control up moves the screen one line up
nnoremap <C-Up> <C-y>
"control down moves the screen one line down
nnoremap <C-Down> <C-e>
"to mark a spot in the file to return to it use m[letter] then to return to it later use `[letter]

"sets easy toggle of highlighted search by pressing control-h
let hlstate=0
nnoremap <C-h> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
