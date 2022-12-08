"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

  " Cheat Sheet
  Plug 'RishabhRD/popfix'
  Plug 'RishabhRD/nvim-cheat.sh'

  Plug '~/code/marks.nvim'

  " This ain't working in Beginland anymore
  " Plug 'vimwiki/vimwiki'

  " Alt Snippet Setup
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'

  " Plug 'hrsh7th/cmp-cmdline'
  "
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'rafamadriz/friendly-snippets'

  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " Plug 'sebdah/vim-delve'
  " Plug 'dererkparker/vim-delve'

  Plug 'mfussenegger/nvim-dap'
  Plug 'leoluz/nvim-dap-go'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neovim/nvim-lspconfig'
  Plug 'theHamsta/nvim-dap-virtual-text'

  " Trying it out
  Plug 'nvim-lua/plenary.nvim'
  Plug 'tjdevries/green_light.nvim'

  Plug 'tjdevries/nlua.nvim'
  Plug 'euclidianAce/BetterLua.vim'

  " Can't remember why I'm not using this
  " Plug 'TimUntersberger/neogit'

  " Startup Profiling
  Plug 'dstein64/vim-startuptime'

  Plug 'rhysd/git-messenger.vim'

  " Misc
  Plug 'KabbAmine/vCoolor.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'dylanaraps/wal.vim'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'frazrepo/vim-rainbow'
  Plug 'godlygeek/tabular'
  Plug 'janko/vim-test'

  " Tmux and Vim Together at Last!
  Plug 'hupfdule/vimux'
  " Plug 'benmills/vimux-golang'

  " Calm the ADHD
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'

  " Just to be able to be Post Gists
  Plug 'mattn/gist-vim'
  Plug 'mattn/webapi-vim'

  " Navigating Directories
  Plug 'justinmk/vim-dirvish'

  " All Hail TPope
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-dadbod'
  Plug 'tpope/vim-unimpaired'

  Plug 'github/copilot.vim'

  Plug 'voldikss/vim-floaterm'

  Plug 'tomlion/vim-solidity'

  " Sitting on the Top of a Tree
  Plug 'nvim-treesitter/nvim-treesitter'

  " Tele Pack
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'

  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " Colors and Whatnot
  Plug 'norcalli/nvim-colorizer.lua' " This brings me the most joy
  Plug 'norcalli/nvim-terminal.lua'
  Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

  Plug 'j-hui/fidget.nvim'

  " Terraform
  Plug 'hashivim/vim-terraform'
  Plug 'hashicorp/terraform-ls'

  " For Generating My Begin Tag
  " Plug 'johannesthyssen/vim-signit'

  Plug 'kshenoy/vim-signature'
call plug#end()
