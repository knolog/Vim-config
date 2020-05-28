"""""""""""""""""""""""""""""""""""""""""""""""""
"               General settings
"""""""""""""""""""""""""""""""""""""""""""""""""
if has('termguicolors')
    let &t_8f = "[38;2;%lu;%lu;%lum"
    let &t_8b = "[48;2;%lu;%lu;%lum"
    set termguicolors
endif
set t_Co=256
set t_ut=
set background=dark
set nocompatible
set cmdheight=1
set showmatch
set modeline
set ruler
set virtualedit=block
set title
set secure
set mouse=nv
set cursorline
set backspace=indent,eol,start
set errorbells
set visualbell
set hidden
set magic
set fileformats=unix,dos,mac
set formatoptions+=1
set formatoptions-=t
set formatoptions-=o
set encoding=utf-8
set fileencoding=utf-8
set number
set relativenumber
set laststatus=2
set showtabline=2
set timeoutlen=1000
set ttimeoutlen=0
set updatetime=100
set history=50
set undolevels=100
set undoreload=1000
set hlsearch
set incsearch
set smartcase
set ignorecase
set smarttab
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set clipboard=unnamed
set nobackup
set nowritebackup
set noswapfile
set wildignore+=*/.git/*,*/.DS_Store,*/tmp/*
set wildmenu
set lazyredraw
set completeopt=noinsert,menuone,noselect
set shortmess+=c
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax on
syntax enable
filetype on
filetype plugin on
filetype indent on
let mapleader="\<Space>"




"""""""""""""""""""""""""""""""""""""""""""""""""
"                   Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sillybun/vim-repl'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'romainl/vim-cool'
Plug 'lfv89/vim-interestingwords'
Plug 'vim-python/python-syntax'
Plug 'justinmk/vim-sneak'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'mhinz/vim-startify'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'cocopon/vaffle.vim'
Plug 'terryma/vim-expand-region'
Plug 'dstein64/vim-startuptime'
Plug 'Shougo/neomru.vim'
Plug 'osyo-manga/vim-over'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-browser-search'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'wellle/visual-split.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'simnalamburt/vim-mundo'
Plug 'justinmk/vim-gtfo'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'junegunn/limelight.vim'
Plug 'jpalardy/vim-slime'
Plug 'poliquin/stata-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'Vigemus/iron.nvim'
Plug 'liuchengxu/vim-clap', {'do': ':Clap install-binary!'}
Plug 'machakann/vim-highlightedyank'
Plug 'itchyny/calendar.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'wincent/terminus'
Plug 'rhysd/clever-f.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'chrisbra/NrrwRgn'
Plug 't9md/vim-choosewin'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'roxma/nvim-yarp'
Plug 'jiangmiao/auto-pairs'
Plug 'mhartington/oceanic-next'
Plug 'AndrewRadev/switch.vim'
Plug 'arcticicestudio/nord-vim'
" Plug 'christoomey/vim-tmux-navigator'
call plug#end()




"""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin configurations
"""""""""""""""""""""""""""""""""""""""""""""""""

" -------------------  colorscheme  ---------------------
" let g:gruvbox_invert_selection=0
" colorscheme gruvbox

" let g:afterglow_blackout=1
" let g:afterglow_inherit_background=1
" colorscheme afterglow

" colorscheme jellybeans

" let ayucolor="light"
" let ayucolor="mirage"
" let ayucolor="dark"
" colorscheme ayu

" colorscheme OceanicNext

let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
colorscheme nord


" -------------------  airline  ---------------------
" let g:airline_theme='tomorrow'
" let g:airline_theme='afterglow'
" let g:airline_theme='bubblegum'
" let g:airline_theme='wombat'
" let g:airline_theme='term'
" let g:airline_theme='oceanicnext'

let g:airline_theme='nord'

let g:airline_powerline_fonts = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#branch#format = 2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline#extensions#tabline#tab_nr_type = 2

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
    \ '1': '❶ ',
    \ '2': '❷ ',
    \ '3': '❸ ',
    \ '4': '❹ ',
    \ '5': '❺ ',
    \ '6': '❻ ',
    \ '7': '❼ ',
    \ '8': '❽ ',
    \ '9': '❾ '
    \}

au VimEnter * let [g:airline_section_a, g:airline_section_b] = [airline#section#create(['mode', ' ', 'branch', 'crypt', 'paste', 'keymap', 'capslock', 'xkblayout', 'iminsert']), airline#section#create(['hunks', 'spell'])]

call airline#parts#define_raw('linenr', '%l')
call airline#parts#define_accent('linenr', 'bold')
let g:airline_section_z = airline#section#create(['%3p%%  ', g:airline_symbols.linenr .' ', 'linenr', ':%c '])
let g:airline_section_warning = ''


" -------------------  coc  ---------------------
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" if exists('*complete_info')
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" inoremap <silent><expr> <C-,> coc#refresh()
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gr <Plug>(coc-references)
" nmap gn <Plug>(coc-rename)

" let g:coc_global_extensions = [
"             \'coc-lists',
"             \'coc-pairs'
"             \]


" -------------------  iron.vim  ---------------------
let g:iron_map_defaults = 0


" -------------------  vim-repl  ---------------------
if has('vim')
    let g:repl_program = {
                \   'python': ['ipython'],
                \   'default': ['zsh'],
                \   'r': ['R'],
                \   'lua': ['lua'],
                \   'vim': ['vim -e']
                \   }
    let g:repl_cursor_down = 1
    let g:repl_python_automerge = 1
    let g:repl_ipython_version = '7'
    let g:repl_position = 3
    let g:repl_console_name = 'REPL'
    let g:sendtorepl_invoke_key = "<leader>rr"
endif


" -------------------  vim-sneak  ---------------------
let g:sneak#label = 1


" -------------------  vim-easymotion  ---------------------
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_prompt = 'Jump to → '
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1


" -------------------  vim-markdown  ---------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_conceal = 0


" -------------------  markdown-preview  ---------------------
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0


" -------------------  vim-gitgutter  ---------------------
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

" ------------------------  vaffle  ---------------------------
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


" -------------------  indentLine  ---------------------
let g:indentLine_char = '┆'
" let g:indentLine_color_gui = '#b7b7b7'
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0


" -------------------  python-syntax  ---------------------
let g:python_highlight_all = 1
let python_highlight_space_errors = 0
let g:python_highlight_indent_errors = 0


" -------------------  vim-browser-search  ---------------------
let g:browser_search_default_engine = 'google'


" -------------------  vim-cool  ---------------------
let g:CoolTotalMatches = 1


" -------------------  vim-slime  ---------------------
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default","target_pane": "{right-of}"}
let g:slime_python_ipython = 1
let g:slime_preserve_curpos = 1
let g:slime_dont_ask_default = 1


" -------------------  splitjoin  ---------------------
    " Dicts ~
    " >
    " knights = {'gallahad': 'the pure', 'robin': 'the brave'}

    " knights = {
    "         'gallahad': 'the pure',
    "         'robin': 'the brave'
    "         }
    " <
    " Lists ~
    " >
    " spam = [1, 2, 3]

    " spam = [1,
    "         2,
    "         3]
    " <
    " Tuples ~
    " >
    " spam = (1, 2, 3)

    " spam = (1,
    "         2,
    "         3)
    " <
    " Statements ~
    " >
    " if foo: bar()

    " if foo:
    "     bar()
    " <
    " Imports ~
    " >
    " from foo import bar, baz

    " from foo import bar,\
    "         baz
    " <
    " Assignment ~
    " >
    " a, b = foo("bar"), [one, two, three]

    " a = foo("bar")
    " b = [one, two, three]

    " un, pack = something

    " un = something[0]
    " pack = something[1]
    " <

let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''


" -------------------  calendar  ---------------------
let g:calendar_frame = 'default'


" -------------------  clever-f  ---------------------
let g:clever_f_across_no_line = 1
map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)


" -------------------  highlightedyank  ---------------------
let g:highlightedyank_highlight_duration = 300
highlight HighlightedyankRegion gui=bold guibg=#005faf


" -------------------  vim-clap  ---------------------
let g:clap_layout = { 'width': '80%', 'height': '50%', 'row': '20%', 'col': '12%' }


" -------------------  vim-visual-multi  ---------------------
let g:VM_leader = 'mm'


" -------------------  rnvimr  ---------------------
let g:rnvimr_pick_enable = 1


" -------------------  choosewin  ---------------------
" Ref: https://github.com/hardcoreplayers/ThinkVim/blob/develop/modules/module-choosewin.vim
let g:choosewin_label = 'SDFJKLZXCV'
let g:choosewin_overlay_enable = 1
let g:choosewin_statusline_replace = 1
let g:choosewin_overlay_clear_multibyte = 0
let g:choosewin_blink_on_land = 0
let g:choosewin_color_label = {
	\ 'cterm': [ 236, 2 ], 'gui': [ '#555555', '#000000' ] }
let g:choosewin_color_label_current = {
	\ 'cterm': [ 234, 220 ], 'gui': [ '#333333', '#000000' ] }
let g:choosewin_color_other = {
	\ 'cterm': [ 235, 235 ], 'gui': [ '#333333' ] }
let g:choosewin_color_overlay = {
	\ 'cterm': [ 2, 10 ], 'gui': [ '#88A2A4' ] }
let g:choosewin_color_overlay_current = {
	\ 'cterm': [ 72, 64 ], 'gui': [ '#7BB292' ] }
nmap \ <Plug>(choosewin)


" -------------------  auto-pairs  ---------------------
let g:AutoPairsMapCR = 0


" -------------------  ncm2  ---------------------
autocmd BufEnter * call ncm2#enable_for_buffer()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:python3_host_prog = expand('~/anaconda3/bin/python')


" -------------------  switch  ---------------------
let g:switch_custom_definitions =
    \ [
    \   ['&', '|'],
    \   ['>=', '<='],
    \   ['True', 'False'],
    \   ['true', 'false']
    \ ]


" -------------------  fzf  ---------------------
let g:fzf_buffers_jump = 1
let $FZF_DEFAULT_OPTS="--reverse"

if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
endif

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files('~/', {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

command! -bang -nargs=? -complete=dir Project
    \ call fzf#vim#files('~/Git', {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

command! -bang -nargs=? -complete=dir CurrentDirectory
    \ call fzf#vim#files(expand('%:p:h'), {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* RgWord
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(expand('<cword>') . ''), 1,
  \   fzf#vim#with_preview(), <bang>0)

" floating fzf window with borders
" Ref: https://github.com/Blacksuan19/init.nvim/blob/master/init.vim
" function! CreateCenteredFloatingWindow()
"     let width = min([&columns - 4, max([80, &columns - 30])])
"     let height = min([&lines - 4, max([20, &lines - 20])])
"     let top = ((&lines - height) / 2) - 1
"     let left = (&columns - width) / 2
"     let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

"     let top = "╭" . repeat("─", width - 2) . "╮"
"     let mid = "│" . repeat(" ", width - 2) . "│"
"     let bot = "╰" . repeat("─", width - 2) . "╯"
"     let lines = [top] + repeat([mid], height - 2) + [bot]
"     let s:buf = nvim_create_buf(v:false, v:true)
"     call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
"     call nvim_open_win(s:buf, v:true, opts)
"     set winhl=Normal:Floating
"     let opts.row += 1
"     let opts.height -= 2
"     let opts.col += 2
"     let opts.width -= 4
"     call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
"     au BufWipeout <buffer> exe 'bw '.s:buf
"     setlocal
"         \ buftype=nofile
"         \ nobuflisted
"         \ bufhidden=hide
"         \ nonumber
"         \ norelativenumber
"         \ signcolumn=no
" endfunction

" if has('nvim')
"     let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
" endif


" -------------------  cursor  ---------------------
" Change cursor shape based on mode
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"




"""""""""""""""""""""""""""""""""""""""""""""""""
"                  Command
"""""""""""""""""""""""""""""""""""""""""""""""""

" delete trailing space
autocmd BufWritePre * :%s/\s\+$//e


" delete other buffers
command! BufferOnly execute '%bdelete|edit #|normal `"'


" python
autocmd BufRead,BufNewFile *.py setlocal textwidth=80 colorcolumn=80


" markdown
autocmd BufRead,BufNewFile *.md setlocal spell


" auto pairs
" autocmd FileType stata let b:coc_pairs_disabled = ['`']
" autocmd FileType markdown let b:coc_pairs_disabled = ['`']
au Filetype markdown let b:AutoPairs = {'(':')','{':'}',"'":"'",'"':'"','*':'*'}
au Filetype stata let b:AutoPairs = {'(':')','{':'}',"'":"'",'"':'"'}


" automatic table mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'




"""""""""""""""""""""""""""""""""""""""""""""""""
"                Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""

" -------------------  Quit  ---------------------
" remove highlighting
nnoremap <leader>qh :nohl<cr>
" claer message
nnoremap <leader>qm :<Esc>
" save and quite
nnoremap <leader>qw :x<cr>
" force quite
nnoremap <leader>qf :q!<cr>


" -------------------  vim-clap and fzf  ---------------------
if has('nvim')
    " list buffers
    nnoremap <leader>bb :<C-u>Clap buffers<cr>
    " search files
    nnoremap <leader>ff :<C-u>Clap filer<cr>
    " search files
    nnoremap <leader>fF :<C-u>Files:<cr>
    " search files in current directory
    nnoremap <leader>f. :<C-u>Clap files .<cr>
    " search files in my git project
    nnoremap <leader>fp :<C-u>Clap filer ~/Git<cr>
    " search most recent files
    nnoremap <leader>fr :<C-u>Clap history<cr>
    nnoremap <leader>fR :<C-u>History<cr>
    " ag search
    nnoremap <leader>sa :<C-u>Ag<Space>
    " search lines in current buffer
    nnoremap <leader>ss :<C-u>BLines<cr>
    " search tags in current buffer
    nnoremap <leader>st :<C-u>BTags<cr>
    " search commands
    nnoremap <leader>sc :<C-u>Clap command<cr>
    " rg search
    nnoremap <leader>sg :<C-u>Rg<Space>
    " rg search cursor word
    nnoremap <leader>sw :<C-u>RgWord<cr>
endif

if has('vim')
    " list buffers
    nnoremap <leader>bb :<C-u>Buffers<cr>
    " search files
    nnoremap <leader>ff :<C-u>Files:<cr>
    " search files in current directory
    nnoremap <leader>f. :<C-u>CurrentDirectory:<cr>
    " search files in my git project
    nnoremap <leader>fp :<C-u>Project:<cr>
    " search most recent files
    nnoremap <leader>fr :<C-u>History<cr>
    " ag search
    nnoremap <leader>sa :<C-u>Ag<Space>
    " search lines in current buffer
    nnoremap <leader>ss :<C-u>BLines<cr>
    " search tags in current buffer
    nnoremap <leader>st :<C-u>BTags<cr>
    " search commands
    nnoremap <leader>sc :<C-u>Commands<cr>
    " rg search
    nnoremap <leader>sg :<C-u>Rg<Space>
    " rg search cursor word
    nnoremap <leader>sw :<C-u>RgWord<cr>
endif


" -------------------  Buffers  ---------------------
" open {file}
nnoremap <leader>be :e<Space>
" delete all other buffers
nnoremap <leader>bo :BufferOnly<cr>:bn<cr>:bd<cr>
" delete current buffer
nnoremap <leader>bd :bdelete<cr>
" force delete current buffer
nnoremap <leader>bD :bdelete!<cr>
" next buffer
nnoremap <leader>bn :bn<cr>
" previous buffer
nnoremap <leader>bp :bp<cr>
" source buffer
nnoremap <leader>bs :source %<cr>


" -------------------  Tabs  ---------------------
" open {file} in new tab
nnoremap <leader>tf :tabf<Space>
" open an empty tab
nnoremap <leader>te :tabe<cr>
" close all other tabs
nnoremap <leader>to :tabonly<cr>
" close current tab
nnoremap <leader>td :tabclose<cr>
" force close current tab
nnoremap <leader>tD :tabclose!<cr>
" next tab
nnoremap <leader>tn gt
" previous tab
nnoremap <leader>tp gT
" move tab focus
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5


" -------------------  Files  ---------------------
" save file in normal mode
nnoremap <leader>fs :w<cr>
" save file in insert mode
inoremap <leader>fs <Esc>:w<cr>
" open .vimrc
nnoremap <leader>fd :e ~/.vimrc<cr>
" copy file name only
nnoremap <leader>fY :let @*=expand("%")<cr>
" copy file name with full path
nnoremap <leader>fy :let @*=expand("%:p")<cr>


" -------------------  Application  ---------------------
" Install plugins
nnoremap <leader>ai :PlugInstall<cr>
" Update plugins
nnoremap <leader>au :PlugUpdate<cr>
" Clean plugins
nnoremap <leader>ac :PlugClean<cr>
" Insert date
nnoremap <silent> <leader>ad "=strftime("%Y-%m-%d")"<cr>p
nnoremap <silent> <leader>at "=strftime("%T")"<cr>p
nnoremap <silent> <leader>aD "=strftime("%a %d %b %Y")"<cr>p


" -------------------  Others  ---------------------
nnoremap j gj
nnoremap k gk
noremap <Enter> o<ESC>
noremap <S-Enter> O<ESC>
" gof: reveal current file in finder (default mapping of gtfo.vim)


" -------------------  Windows  ---------------------
" open {file} from homoe directory and split window vertically
nnoremap <leader>wv :vs<cr><C-w>l
" open {file} from homoe directory and split window horizontally
nnoremap <leader>ws :sp<cr><C-w>j
" open an empty buffer and split window vertically
nnoremap <leader>wV :vnew<cr><C-w>x<C-w>l
" open an empty buffer and split window horizontally
nnoremap <leader>wS :new<cr><C-w>x<C-w>j
" focus on the window on the left
nnoremap <leader>wh <C-w>h
" focus on the window on the right
nnoremap <leader>wl <C-w>l
" focus on the window on the bottom
nnoremap <leader>wj <C-w>j
" focus on the window on the top
nnoremap <leader>wk <C-w>k
" swap window
nnoremap <leader>wa <C-w>x
" close window
nnoremap <leader>wd <C-w>q
" move window to the left
nnoremap <leader>wH <C-w>H
" move window to the right
nnoremap <leader>wL <C-w>L

if has('vim')
    " Convert to normal mode in terminal buffer
    tnoremap <C-o> <C-w>N
    " focus on left window from terminal buffer
    tnoremap <C-h> <C-w>h
    " focus on right window from terminal buffer
    tnoremap <C-l> <C-w>l
    " focus on bottom window from terminal buffer
    tnoremap <C-j> <C-w>j
    " focus on top window from terminal buffer
    tnoremap <C-k> <C-w>k
endif

if has('nvim')
    " Convert to normal mode in terminal buffer
    tnoremap <C-o> <C-\><C-n>
    " focus on left window from terminal buffer
    tnoremap <C-h> <c-\><c-n><c-w>h
    " focus on right window from terminal buffer
    tnoremap <C-l> <c-\><c-n><c-w>l
    " focus on bottom window from terminal buffer
    tnoremap <C-j> <c-\><c-n><c-w>j
    " focus on top window from terminal buffer
    tnoremap <C-k> <c-\><c-n><c-w>k
endif

" split a mini window
vnoremap <leader>wm :VSSplit<cr>
" narrow region
vmap <leader>wn <Plug>NrrwrgnDo


" -------------------  Search  ---------------------
" highlight all occrances of cursor word
nnoremap <silent> <leader>si :call InterestingWords('n')<cr>
nnoremap <silent> <leader>sI :call UncolorAllWords()<cr>
" google search selected text
vmap <silent> <leader>so <Plug>SearchVisual
" highlight cursor word in current buffer
nnoremap mc *


" -------------------  Jump  ---------------------
" jump 1 character
map <leader>j1 <Plug>(easymotion-bd-f)
" jump 2 characters
map <leader>j2 <Plug>(easymotion-s2)
" jump n characters
map <leader>jn <Plug>(easymotion-sn)
" jump words
map <leader>jw <Plug>(easymotion-bd-w)
" jump lines
map <leader>jl <Plug>(easymotion-bd-jk)
" jump between brackets
nnoremap mp %


" -------------------  Toggle  ---------------------
" toggle tagbar
nnoremap <leader>ot :TagbarToggle<cr>
" toggle vaffle
nnoremap <leader>od :Vaffle<cr>
" toggle startuptime
nnoremap <leader>os :StartupTime<cr>
" toggle overcommandline
nnoremap <leader>oc :OverCommandLine<cr>
" toggle startify
nnoremap <leader>oo :Startify<cr>
" toggle undo tree
nnoremap <leader>ou :MundoToggle<cr>
" toggle on/off limelight
nmap <Leader>ol :Limelight<cr>
xmap <Leader>ol :Limelight<cr>
nmap <Leader>oL :Limelight!<cr>
" toggle ranger
nnoremap <silent> <leader>or :RnvimrToggle<cr>


" -------------------  Text  ---------------------
" interactive search and repalce in entire buffer
nmap <leader>er :OverCommandLine<cr>%s///g<left><left><left>
" interactive search and repalce in selected text
vmap <leader>er :OverCommandLine<cr>s///g<left><left><left>
" text expansion
map <leader>ee <Plug>(expand_region_expand)
" text shrinking
map <leader>eE <Plug>(expand_region_shrink)
" join lines
nmap <Leader>ej :SplitjoinJoin<cr>
" split lines
nmap <Leader>es :SplitjoinSplit<cr>
" switch function argument
nnoremap <leader>eL :SidewaysLeft<cr>
nnoremap <leader>el :SidewaysRight<cr>
" move to begining of line in normal mode
nnoremap <C-a> 0
" move to end of line in normal mode
nnoremap <C-e> $
" move to begining of line in visual mode
vnoremap <C-a> 0
" move to end of line in visual mode
vnoremap <C-e> $h
" move to begining of line in insert mode
inoremap <C-a> <Esc>I
" move to end of line in insert mode
inoremap <C-e> <Esc>A
" move cursor forward in insert mode
inoremap <C-f> <right>
" move cursor backward in insert mode
inoremap <C-b> <left>
" move cursor forward in command mode
cnoremap <C-f> <right>
" move cursor backward in command mode
cnoremap <C-b> <left>
" indent in normal mode
nnoremap <leader>i >>
" unindent in normal mode
nnoremap <leader>n <<
" indent in visual mode
vnoremap <leader>i >
" unindent in visual mode
vnoremap <leader>n <
" insert parenthesis for selected text
vmap ik S)
" insert square bracket for selected text
vmap if S]
" insert curly bracket for selected text
vmap ih S}
" insert single quotation for selected text
vmap id S'
" insert double quotation for selected text
vmap iy S"
" align selected text
vmap <leader>ea <Plug>(EasyAlign)
" escape in insert mode
inoremap fd <Esc>
" escape in visual mode
vnoremap fd <Esc>
" visual selection text including surrounding
nnoremap vaf va]
nnoremap vah va}
nnoremap vad va'
nnoremap vay va"
" visual select text within parenthesis
nnoremap vif vi]
nnoremap vih vi}
nnoremap vid vi'
nnoremap viy vi"
" delete text including surrounding
nnoremap daf da]
nnoremap dah da}
nnoremap dad da'
nnoremap day da"
" delete text without surrounding
nnoremap dif di]
nnoremap dih di}
nnoremap did di'
nnoremap diy di"
" change text including surrounding
nnoremap caf ca]
nnoremap cah ca}
nnoremap cad ca'
nnoremap cay ca"
" change text within parenthesis
nnoremap cif ci]
nnoremap cih ci}
nnoremap cid ci'
nnoremap ciy ci"
" delete surrounding
nmap dsf ds]
nmap dsh ds}
nmap dsd ds'
nmap dsy ds"
" add space around =
nnoremap ,d i<Space><Esc>la<Space><Esc>


" -------------------  incsearch.vim  ---------------------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


" -------------------  Git  ---------------------
" git next change
nmap <leader>gj <Plug>(GitGutterNextHunk)
" git previous change
nmap <leader>gk <Plug>(GitGutterPrevHunk)
" git preview
nmap <leader>gp <Plug>(GitGutterPreviewHunk)
" git diff
nnoremap <leader>gd :Git diff<cr>
" git blame
nnoremap <leader>gb :Git blame<cr>
" git log
nnoremap <leader>gl :Git log<cr>
" git status
nnoremap <leader>gs :Gstatus<cr>


" -------------------  Python  ---------------------
if has('vim')
    augroup python_key_map
        autocmd! python_key_map
        " toggle ipython
        autocmd Filetype python nnoremap <buffer> <leader>rt :REPLToggle<cr>
        " hide ipython
        autocmd Filetype python nnoremap <buffer> <leader>rh :REPLHide<cr>
        " unhide ipython
        autocmd Filetype python nnoremap <buffer> <leader>ru :REPLUnhide<cr><C-w>q
    augroup end
endif

if has('nvim')
    nnoremap <leader>rt :IronRepl<cr><Esc>
    nnoremap <leader>rs :IronRestart<cr><Esc>
    vmap <leader>rr <Plug>(iron-visual-send)
    nmap <leader>rr <Plug>(iron-send-line)
    nmap <leader>ri <plug>(iron-interrupt)
    nmap <leader>rq <Plug>(iron-exit)
    nmap <leader>rc <Plug>(iron-clear)
    autocmd Filetype python nnoremap ,t :IronRepl<cr><Esc>
    autocmd Filetype python nnoremap ,s :IronRestart<cr><Esc>
    autocmd Filetype python vmap ,r <Plug>(iron-visual-send)'>j
    autocmd Filetype python nmap ,r <Plug>(iron-send-line)
    autocmd Filetype python nmap ,i <plug>(iron-interrupt)
    autocmd Filetype python nmap ,q <Plug>(iron-exit)
    autocmd Filetype python nmap ,c <Plug>(iron-clear)
endif


" -------------------  Markdown  ---------------------
" preview markdown
nmap <leader>mp <Plug>MarkdownPreview
" stop preview markdown
nmap <leader>ms <Plug>MarkdownPreviewStop
nmap <leader>mt <Plug>MarkdownPreviewToggle

autocmd Filetype markdown inoremap ,b ****<Esc>hi
autocmd Filetype markdown inoremap ,i **<Esc>i
autocmd Filetype markdown inoremap ,s ~~~~<Esc>F*hi
autocmd Filetype markdown inoremap ,c ``<Esc>i
autocmd Filetype markdown inoremap ,k ```<cr><cr>```<Esc>ki
autocmd Filetype markdown inoremap ,h ====<Esc>hi
autocmd Filetype markdown inoremap ,l []()<Esc>hhi
autocmd Filetype markdown inoremap ,p ![]()<Esc>hhi


" -------------------  Typing  ---------------------
inoremap kk ()<Esc>i
inoremap fk []<Esc>i
inoremap hk {}<Esc>i
inoremap jk <><Esc>i
inoremap sg \|
inoremap dg _
inoremap ji +
inoremap cj *
inoremap xy <
inoremap dy >
inoremap mj $
inoremap yb £
inoremap qa @
inoremap yw ?
inoremap sj ^
inoremap bf %
inoremap aa &
inoremap bw ~
inoremap gt !
inoremap jh #
inoremap jn -
inoremap dh =
cnoremap kk ()
cnoremap fk []
cnoremap hk {}
cnoremap jk <>
cnoremap dg _
cnoremap ji +
cnoremap bf %
cnoremap aa &
cnoremap bw ~
cnoremap gt !
cnoremap jh #
cnoremap jn -
cnoremap sj ^
cnoremap mj $
cnoremap dh =
" tnoremap kk ()
" tnoremap fk []
" tnoremap hk {}
" tnoremap jk <>
" tnoremap dg _
" tnoremap ji +
" tnoremap bf %
" tnoremap aa &
" tnoremap bw ~
" tnoremap gt !
" tnoremap jh #
" tnoremap jn -
" tnoremap sj ^
" tnoremap mj $
" tnoremap dh =

