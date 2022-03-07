""" Main Configurations
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
    " Use actual tab chars in c (norminette).
    autocmd FileType c set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
endif

" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set guicursor=i:ver25-iCursor
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title
set mouse=a

let mapleader = "," " map leader to comma

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>s

" Toggleterm
let g:toggleterm_terminal_mapping = '<C-t>'
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" Telescope
map <C-f> :Telescope find_files<CR>
map <C-n> :Telescope grep_string<CR>

map <Tab> :NERDTreeToggle<CR>

" Moving a line of code
"nnoremap ,<Up>	 :<C-u>silent! move-2<CR>==
"nnoremap ,<Down> :<C-u>silent! move+<CR>==
nnoremap <silent><s-Up> :move-2<CR>
nnoremap  <silent><s-Down> :move+<CR>
" change movement!
" The Theo's way X)

" left
noremap ; l 
" up
noremap l k
" down
noremap k j
" right
noremap j h


"""C++ preferences"""
let g:tmpl_search_paths = ['~/templates']
let g:tmpl_author_email = 'wubbalubba@dubdub'
let g:tmpl_author_name = 'hypn0x'

