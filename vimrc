" ----------  General settings  ----------
set nocompatible
set showmatch
set ruler

" Term color
if has('termguicolors')
  set termguicolors
endif
set t_Co=256
set background=dark

syntax on
syntax enable

set hidden

set title

set laststatus=2
set showtabline=2

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Delay
" https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000
set ttimeoutlen=0

set updatetime=100

" Disable error sound
" https://stackoverflow.com/questions/18589352/how-to-disable-vim-bells-sounds
set belloff=all

" Enable line number
set relativenumber
set number

" Enable back delete in insert mode
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start

" Do not keep backup and swap file
set nobackup
set nowritebackup
set noswapfile

" Maximum number of history
set history=50

" Fold
" set foldmethod=indent

" Map leader key to <space>
let mapleader=" "

" Enable filetype detection
filetype on
filetype plugin on

" Enable coursor line
set cursorline

" Indent
set autoindent
set nosmartindent
set shiftround
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
filetype indent on

" Highlight search
" 	vim-cool will remove highight automatically
set hlsearch 
set incsearch

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Use system clipboard for copy and paste
set clipboard=unnamed

" let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Change cursor shape based on mode 
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

set undolevels=100
set undoreload=1000



" ----------  Keybindings  ----------

"
map <leader>j1 <Plug>(easymotion-bd-f)
map <leader>j2 <Plug>(easymotion-s2)
map <leader>jn <Plug>(easymotion-sn)
map <leader>jw <Plug>(easymotion-bd-w)
map <leader>jl <Plug>(easymotion-bd-jk)
" Normal mode
nnoremap <leader>qh :nohl<cr> 
nnoremap <leader>qw :x<cr>
nnoremap <leader>qf :q!<cr>
"
nnoremap <leader>bf :tabf 
nnoremap <leader>be :tabe<cr>
nnoremap <leader>bo :tabonly<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bD :bdelete!<cr>
nnoremap <leader>bn gt
nnoremap <leader>bp gT
"
nnoremap <leader>fo :e 
nnoremap <leader>fs :w<cr>
nnoremap <leader>fy :let @*=expand("%")<CR>
nnoremap <leader>fY :let @*=expand("%:p")<CR>
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
"
nnoremap <leader>vr :source %<cr>
nnoremap <leader>vi :PlugInstall<cr>
nnoremap <leader>vd :PlugClean<cr>
nnoremap <leader>vu :PlugUpdate<cr>
nnoremap <leader>vl :nno <lt>leader><CR>
nnoremap <C-e> $
"
nnoremap <leader>i >>
nnoremap <leader>n <<
nnoremap <leader>H <C-w>H
nnoremap <leader>L <C-w>L
"
noremap <leader>ss :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>st :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
nnoremap <leader>sw *
nnoremap <silent> <leader>si :call InterestingWords('n')<cr>
nnoremap <silent> <leader>sI :call UncolorAllWords()<cr>
"
nnoremap <leader>wv :vnew<cr><C-w>x<C-w>l
nnoremap <leader>ws :new<cr><C-w>x<C-w>j
nnoremap <leader>ww :<C-U><C-R>=printf("Leaderf window  %s", "")<CR><CR>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wa <C-w>x
nnoremap <leader>wd <C-w>q
"
nnoremap <leader>tr :REPLToggle<cr>
"
nnoremap <leader>tt :TagbarToggle<cr>
"
nnoremap mm %
"
nnoremap <leader>kk dib
nnoremap <leader>kf di]
nnoremap <leader>kh di}
nnoremap <leader>kd di'
nnoremap <leader>ks di"
"
nmap <leader>gj <Plug>(GitGutterNextHunk)
nmap <leader>gk <Plug>(GitGutterPrevHunk)
nmap <leader>gp <Plug>(GitGutterPreviewHunk)
nnoremap <leader>gd :Git diff<cr>
nnoremap <leader>gb :Git blame<cr>
nnoremap <leader>gl :Git log<cr> 
"
nmap <leader>bb  <Plug>(choosewin)
" Insert mode
inoremap jj <Esc>`^
inoremap <leader>fs <Esc>:w<cr>
inoremap kk ()<Esc>i
inoremap fk []<Esc>i
inoremap hk {}<Esc>i
inoremap jk <><Esc>i
inoremap sg \|
inoremap dg _
inoremap js +
inoremap cj *
inoremap xy <
inoremap dy >
inoremap my $
inoremap yb £
inoremap qa @
inoremap yw ?
inoremap sj ^
inoremap bf %
inoremap aa &
inoremap bw ~
inoremap gt !
inoremap jh #
inoremap <C-f> <right>
inoremap <C-b> <left>
" Visual mode
vnoremap <leader>i >
vnoremap <leader>n <
vmap ik S)
vmap if S]
vmap ih S}
vmap id S'
vmap iy S"
vmap <leader>ea <Plug>(EasyAlign)
vnoremap <C-e> $h
" Terminal mode
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-n> <C-w>N



" ----------  Plugins  ----------
" Vim plugin manager: vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'sillybun/vim-repl'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'gilgigilgil/anderson.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'tpope/vim-surround'
Plug 'ajmwagar/vim-deus'
Plug 'jiangmiao/auto-pairs'
Plug 'romainl/vim-cool'
Plug 'lfv89/vim-interestingwords'
Plug 'vim-python/python-syntax'
Plug 'justinmk/vim-sneak'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mhinz/vim-startify'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'w0ng/vim-hybrid' 
Plug 'jpalardy/vim-slime' 
Plug 'srcery-colors/srcery-vim'
Plug 'airblade/vim-gitgutter' 
Plug 'tpope/vim-fugitive' 
Plug 'ryanoasis/vim-devicons'
Plug 'cocopon/vaffle.vim' 
Plug 't9md/vim-choosewin'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
call plug#end()



" ----------  Plugin configuration  ----------
" colorscheme
"	installed colorscheme should be configured after it is loaed
"	vim cannot find colorscheme if configure it before it is loaded
"	https://vi.stackexchange.com/questions/11385/vim-says-i-dont-have-solarized-colorscheme-whereas-i-have-that
" colorscheme anderson
" colorscheme challenger_deep
" colorscheme hybrid
" colorscheme deus
colorscheme srcery

" airline theme
" let g:airline_theme='papercolor'
" let g:airline_theme='deus'
" let g:airline_theme='srcery'
let g:airline_theme='base16'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#branch#format = 2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" indentLine
" let g:indentLine_concealcursor=0
" let g:indentLine_setColors = 1
let g:indentLine_char = '┆'
"   need this in tmux to change indent line color
"   https://github.com/Yggdroot/indentLine/issues/173
"   https://github.com/Yggdroot/indentLine/issues/177
" let g:indentLine_color_gui = '#4c4c4b'
let g:indentLine_color_gui = '#b7b7b7'

" ctrlp
" 	https://github.com/ctrlpvim/ctrlp.vim
" set runtimepath^=~/.vim/bundle/ctrlp.vim

" vim-cool
let g:CoolTotalMatches = 1

" python-syntax
let g:python_highlight_all = 1

" vim-repl
let g:repl_console_name = 'REPL'
let g:repl_program = {
			\   'python': 'ipython',
            \   'default': 'zsh',
            \   'r': 'R',
            \   'lua': 'lua',
            \   'vim': 'vim -e',
            \   }
let g:sendtorepl_invoke_key = "<leader>rr"
let g:repl_cursor_down = 1
let g:repl_python_automerge = 0
let g:repl_ipython_version = '7.13'
let g:repl_stayatrepl_when_open = 0
let g:repl_position = 3
" autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
" autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
" autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

" vim-sneak
let g:sneak#label = 1

" vim-easymotion
let g:EasyMotion_do_mapping = 0

" vim-repeat
silent! call repeat#set("\<Plug>surround", v:count)

" leaderF
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_ShortcutF = "<leader>fp"
let g:Lf_ShowDevIcons = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "Hack Nerd Font" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_CommandMap = {'<C-T>': ['<CR>']}

" vim-easyalign
let g:easy_align_ignore_groups = ['Comment', 'String']

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_no_default_key_mappings = 1

" vim-slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_python_ipython = 1
let g:slime_preserve_curpos = 0

" vim-gitgutter
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" vaffle
    "  ----  --------  --------------------------------
    "  Mode  {lhs}     {rhs}
    "  ----  --------  --------------------------------
    "  n     ~         |<Plug>(vaffle-open-home)|
    "  n     h         |<Plug>(vaffle-open-parent)|
    "  n     l         |<Plug>(vaffle-open-current)|
    "  n     t         |<Plug>(vaffle-open-current-tab)|"
    "  n     *         |<Plug>(vaffle-toggle-all)|
    "  n     .         |<Plug>(vaffle-toggle-hidden)|
    "  nv    <Space>   |<Plug>(vaffle-toggle-current)|
    "  n     <CR>      |<Plug>(vaffle-open-selected)|
    "  n     m         |<Plug>(vaffle-move-selected)|
    "  n     d         |<Plug>(vaffle-delete-selected)|
    "  n     r         |<Plug>(vaffle-rename-selected)|
    "  n     q         |<Plug>(vaffle-quit)|
    "  n     o         |<Plug>(vaffle-mkdir)|
    "  n     R         |<Plug>(vaffle-refresh)|
    "  n     i         |<Plug>(vaffle-new-file)|
    "  n     x         |<Plug>(vaffle-fill-cmdline)|
    "  ----  --------  --------------------------------

let g:vaffle_force_delete = 1

" win-choosewin
let g:choosewin_overlay_enable = 1

