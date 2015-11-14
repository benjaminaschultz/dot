" options to make the UI more friendly "
:set ruler
:set number
:syntax enable
:set background=dark
:filetype plugin on

:set ts=4
:set sw=4
:set expandtab

" set soft tab settings so backspace intelligently deletes 4 spaces as if they were a tab "
":set sts=4"
:set backspace=indent,eol,start

" enable simple autoindenting "
:set ai

:set nobackup
:set foldmethod=indent
:nnoremap <space> za
:vnoremap <space> zf
:nnoremap <silent> <Leader>/ :nohlsearch<CR>
:set listchars=tab:\→\ ,trail:\→
:set list
:set pastetoggle=<F2>
" :set showbreak=⇇ "

:execute pathogen#infect()

" colors "
:hi link EasyMotionShade Comment
:highlight LineNr ctermfg=blue  ctermbg=black  cterm=none
:highlight ErrorMsg ctermfg=black ctermbg=red
:highlight Error ctermfg=black ctermbg=red

let g:flake8_show_in_gutter=1
