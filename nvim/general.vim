" Map Leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

"Set linenumbers
set number

" On pressing tab, insert 2 spaces
set expandtab

" Show existing tab with 2 spaces width
set tabstop=2

"
set softtabstop=2

"
set shiftwidth=2

" Allow mouse interaction with vim
set mouse=a

" Open and close quickfix 
nmap  <Leader>ö :copen<CR>
nmap  <Leader>öö :cclose<CR>

" Set color theme
syntax on

colorscheme OceanicNext

"Use clipboard for yanking, copy and pasting
set clipboard=unnamedplus

" Allow recursive search from where neovim was opened from
set path=.,/usr/include,,**

" Don't wrap round to the first solution found when searching and navigating the results
set nowrapscan

" Move to first search result when typing
set incsearch

" Reload opened files if external commands cause changes
set autoread

" Use spaces instead of actual tabs when pressing tab
set expandtab

" Vertically center scroll offset
set so=10

set termguicolors

set regexpengine=1

" Faster file content navigating with these keys because of their easier
" access
map <silent> <S-l> $
map <silent> <S-h> _
map <silent> <S-k> {
map <silent> <S-j> }

" Improve scrolling performance when navigating through large results
set lazyredraw 

" Highlight cursorline 
set cursorline

"
syntax on

"
set wildignore+=**/node_modules/**   

"
set incsearch

" Ignore case only when the pattern contains no capital letters
set ignorecase smartcase 

"
filetype plugin indent on

" Cancel higlighting with C-c C-c
nnoremap <C-c><C-c> :noh<return> 
nnoremap <Leader>c :noh<return> 
nnoremap <CR> :noh<CR><CR>k

" Copy active file name to clipboard
noremap <silent> <F4> :let @+=expand("%:p")<CR>

" Refresh files
noremap <silent> <F5> :checktime<CR>

" Create new horizontal tmux pane
noremap <silent> <Leader>m :exe "!tmux split-window -h"<CR><CR>

command! -nargs=1 SS let @/ = '\V'.escape(<q-args>, '\')|set hlsearch

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

" Replace current selection from the whole file with another string
map <Leader>s :%s//

" Replace something within visual selection
map <Leader>vs :s/

" Copy active file name to clipboard.
noremap <silent> <F4> :let @+=expand("%:p")<CR>

" Show various whitespace characters
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list

" Enable git blamer
let g:blamer_enabled = 1
