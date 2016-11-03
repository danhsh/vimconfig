" Daniel Ho 2016 Vimrc

" set line number
set number

" for starting up install plugin
execute pathogen#infect()

" for starting up NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ctrl+n toggle
map <C-n> :NERDTreeToggle<CR>

" firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-S-w>   <Esc>:tabclose<CR>

" syntax highlighting
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="high"
colorscheme solarized

" show hidden files (shift+i) hotkey
let NERDTreeShowHidden=1

set autochdir
let NERDTreeChDirMode=2


" Map vimgrep command to recursivly search through files
map <C-f> :vimgrep  **/* <left><left><left><left><left><left>

map<C-p> :CommandT<CR>
noremap    <S-F5>   :<C-U>cnext <CR>
noremap    <S-F4> :<C-U>cprevious <CR>


" set nerdtree directory
map <C-r> :NERDTreeFind<cr>

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '\.gem$',  '\.rbc$', '\~$', '__pycache__']

set shiftwidth=4 "number of spaces to use in each autoindent step
set tabstop=4 "four tab spaces
set softtabstop=4 "number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab "spaces instead of tabs for better cross-editor compatibility
set smarttab "use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent "recommended seting for automatic C-style indentation
set autoindent "automatic indentation in non-C files
set nowrap "no wrapping
set copyindent "copy the previous indentation on autoindenting
set backspace=indent,eol,start "allow backspacing over everything in insert mode

" auto completetion for particular languages, python uses the python-mode
" plugin
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType python set omnifunc=pythoncomplete#Complete

" file specific indention
au FileType python set shiftwidth=4 tabstop=4 softtabstop=4
au FileType html set shiftwidth=2 tabstop=2 softtabstop=2
au FileType css set shiftwidth=2 tabstop=2 softtabstop=2
au FileType javascript set shiftwidth=2 tabstop=2 softtabstop=2
au FileType ruby set shiftwidth=2 tabstop=2 softtabstop=2

set cursorline "underline the current line in the file
set cursorcolumn "highlight the current column. Visible in GUI mode only.

" tab navigation like firefox/chrome
:nmap <C-S-tab> :tabprevious<CR>
:nmap <C-tab> :tabnext<CR>
:map <C-S-tab> :tabprevious<CR>
:map <C-tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>

" Automatically remove trailing whitespaces for when saving
autocmd BufWritePre * :%s/\s\+$//e
