
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'https://github.com/nvie/vim-flake8'
Plug 'lithammer/nvim-pylance'
Plug 'ycm-core/youcompleteme'
call plug#end()


let g:airline_powerline_fonts = 1

colorscheme onedark
syntax on
set number
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey
" NerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
let g:ycm_server_python_interpreter = '/opt/homebrew/bin/python3'
nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>

"
set backspace=indent,eol,start

" Remove All trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd FileType c,cpp,python,go autocmd BufWritePre <buffer> :%s/\s\+$//e
