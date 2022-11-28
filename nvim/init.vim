
" BBBBB   EEEEEEE   GGGG  IIIII NN   NN BBBBB    OOOOO  TTTTTTT
" BB   B  EE       GG  GG  III  NNN  NN BB   B  OO   OO   TTT
" BBBBBB  EEEEE   GG       III  NN N NN BBBBBB  OO   OO   TTT
" BB   BB EE      GG   GG  III  NN  NNN BB   BB OO   OO   TTT
" BBBBBB  EEEEEEE  GGGGGG IIIII NN   NN BBBBBB   OOOO0    TTT

" I've done it and have seen the light
" To be honest, I have enjoyed my life
" more since adding this mapping
let mapleader = "\<Space>"

" This is just something I decided I liked aesthically better
source $HOME/.config/nvim/plug_init.vim

set termguicolors                  " Enable GUI colors for the terminal to get truecolor

" What is this for???
" Why don't we have this on???
" set t_Co=256                     " Enable 256 colors

" This must be loaded after we set termguicolors
lua require('init')

colorscheme challenger_deep

" colorscheme wal
" We have to load the colorscheme first
" and then customize the other colors

color begin

" This is very important to be loaded here
" or Tab will not work, for completion
let g:UltiSnipsExpandTrigger = "<S-Tab>"

" Should this only be in the Rust syntax file???
autocmd BufWritePre *.rs :lua vim.lsp.buf.format()

" What is this for?
let g:vim_markdown_follow_anchor = 1
