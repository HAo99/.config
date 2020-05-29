"  _____                              _ __  __ 
" |  ___|_ _ _ __   ___ _   _  __   _(_)  \/  |
" | |_ / _` | '_ \ / __| | | | \ \ / / | |\/| |
" |  _| (_| | | | | (__| |_| |  \ V /| | |  | |
" |_|  \__,_|_| |_|\___|\__, |   \_/ |_|_|  |_|
"                       |___/                  
"==============================================
" Name: Fancy vim
" Author: @HAo99(Harvey Leung)
" Version: 1.0.0
"  _   _                            
" | | | | __ _ _ ____   _____ _   _ 
" | |_| |/ _` | '__\ \ / / _ \ | | |
" |  _  | (_| | |   \ V /  __/ |_| |
" |_| |_|\__,_|_|    \_/ \___|\__, |
"                             |___/ 
" =========== Design By Harvey Leung.


" ==========================
" =  Plugins Installation  =
" ==========================
call plug#begin('~/.config/nvim/plugged')

" Auto Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Beautify
Plug 'vim-airline/vim-airline'              " Vim Status Line
Plug 'vim-airline/vim-airline-themes'       " Vim Status Line Themes
Plug 'luochen1990/rainbow'

Plug 'joshdick/onedark.vim'                 " Vim Color Scheme
Plug 'mhinz/vim-startify'                   " Welcome Page
Plug 'mhinz/vim-signify'                    " Show Changes
Plug 'bling/vim-bufferline'                 " Show Buffer In Status Line
Plug 'mg979/vim-xtabline'                   " Vim Tab Title Line

" Enhance
Plug 'RRethy/vim-illuminate'                " Highlight Selected Word
Plug 'liuchengxu/vista.vim'                 " Vim Tag List, Show Func/Class
" Plug 'majutsushi/tagbar' 

Plug 'jiangmiao/auto-pairs'                 " Auto Pairs
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'ryanoasis/vim-devicons'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'theniceboy/vim-snippets'

" Language Support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'alvan/vim-closetag'


call plug#end()

" =====================
" =  Vim Raw Setting  =
" =====================

syntax on
colorscheme onedark

" Some servers have issues with backup files
set nobackup
set nowritebackup

" Give more space for displaying message.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience
set updatetime=100

set hidden

set signcolumn=yes

" enable true colors support
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" show line number
set number 
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartcase
set lazyredraw
set expandtab

set background=dark
set autoindent


noremap H 5h
noremap L 5l
noremap J 5j
noremap K 5k

let mapleader=" "    " Set <LEADER> as <SPACE>

noremap Q :q<CR>
noremap S :w<CR>
" ========================
" =  Windows Management  =
" ========================
noremap <LEADER>w <C-w>w
noremap <LEADER>k <C-w>k
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>l <C-w>l

noremap s <nop>
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" ===================================
" =  Command Mode Cursor Movement  ==
" ===================================
cnoremap <C-a> <Home>
cnoremap <C-e> <End>


" ===============================
" = Compile Func & Key Binding  =
" ===============================
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'dart'
		CocCommand flutter.run -d iPhone\ 11\ Pro
		CocCommand flutter.dev.openDevLog
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc






" ==================
" =  Coc Settings  =
" ==================
let g:coc_global_extensions = ['coc-go', "coc-prettier", "coc-json", "coc-css", "coc-explorer", "coc-html", "coc-snippets", "coc-clangd", "coc-xml", "coc-vetur", "coc-tsserver", "coc-python", "coc-vimlsp", "coc-yaml", "coc-emmet"]

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~ '\s'
endfunction
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-o> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)

nnoremap <silent> E :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" coc-explorer config
nmap <LEADER>e :CocCommand explorer<CR>


" =========================
" =  Illuminate Settings  =
" =========================
let g:Illuminate_delay = 250


" =======================
" =  Snippets Settings  =
" =======================
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"


" =====================
" = Tag Bar Settings  =
" =====================
nmap <LEADER>t :Vista!!<CR>
let g:vista_default_executive = 'coc'
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:bufferline_echo = 0

" =============================
" =  Tab Title Line Setting  ==
" =============================
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1



" =============================
" =  Rainbow Bracket Setting  =
" =============================
let g:rainbow_active = 1
