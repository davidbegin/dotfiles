"       :::    ::: :::::::::: :::   :::  :::   :::       :::     :::::::::   ::::::::
"      :+:   :+:  :+:        :+:   :+: :+:+: :+:+:    :+: :+:   :+:    :+: :+:    :+:
"     +:+  +:+   +:+         +:+ +:+ +:+ +:+:+ +:+  +:+   +:+  +:+    +:+ +:+
"    +#++:++    +#++:++#     +#++:  +#+  +:+  +#+ +#++:++#++: +#++:++#+  +#++:++#++
"   +#+  +#+   +#+           +#+   +#+       +#+ +#+     +#+ +#+               +#+
"  #+#   #+#  #+#           #+#   #+#       #+# #+#     #+# #+#        #+#    #+#
" ###    ### ##########    ###   ###       ### ###     ### ###         ########

" Easier Escaping
inoremap jj <Esc>
inoremap kj <Esc>

" Move Split Panes with more Vimlike Motions
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Split to a Vertical split easily
nnoremap <leader>pv :wincmd v<bar> :e %:h <bar><CR>

" Quick reformatting of json
noremap <silent><leader>js :%!python -m json.tool<cr>

" Toggle Folding
" TODO: Make this better
noremap <silent><leader>fo :set fdm=indent<CR>
noremap <silent><leader>fi zR; :set fdm=manual<CR>

" Use Vim spellcheck and chose the first presented option
" for the word under the cursor
noremap <silent><leader>s 1z=e

" Toggle a cursor for focusing on the cursor
" Twitch chat hates it
nnoremap <silent><leader>H :set cursorline! cursorcolumn!<CR>
" nnoremap <silent><leader>h :set cursorline!<CR>

" Built in Vim Mappings
nnoremap <silent><leader>" viw<esc>a"<esc>bi"<esc>lel

" Toggling Line Numbers on
nnoremap <silent><leader>no :set rnu!<CR>
nnoremap <silent><leader>ni :set nu!<CR>

" Faster saving
" ...although maybe this should change
noremap ,, <esc>:w!<cr>

" Focus and redistribute split windows
noremap ff :resize 100 <CR> <BAR> :vertical resize 220<CR>
noremap fm <C-w>=

" Faster Vimrc opening
nnoremap <silent><leader>ev :vs $MYVIMRC<CR>

" Quick reloading .vimrc
noremap <silent><leader>rc :source ~/.config/nvim/init.vim<cr>

" Surround a word in quotes
" I think I should instead use vim-surround more
vnoremap <leader>" <esc>m`'<i"<esc>A"<esc>``<CR>

" Maybe consolidate into one
noremap <leader>pk :set nopaste<cr>
noremap <leader>pp :call PasteIt()<CR>

" I added this to make using C-] to go to reference in help docs
" What Should I have the secondary escape as?
" https://github.com/neovim/neovim/issues/7648
tnoremap <C-[><C-[> <C-\><C-n>

" These are all for Debugging, like w/ Delve
tnoremap <Esc> <C-\><C-n>

" Not sure if I really need settings for toggling the sign column
" nnoremap <silent><leader>scy :set scl=yes<CR>
" nnoremap <silent><leader>scn :set scl=no<CR>

" ========= "
" Telescope "
" ========= "

" We will continue to check this out
" nnoremap <leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ results_width=0.8}))<cr>
" nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
" nnoremap <silent><leader>iv <cmd>lua require'telescope.builtin'.file_browser{}<CR>

" Telescope
nnoremap <silent>gr    <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
" nnoremap <silent><C-g> <cmd>lua require'telescope.builtin'.live_grep{}<CR>
" nnoremap <silent><C-p> <cmd>lua require'telescope.builtin'.git_files{}<CR>
"
nnoremap <silent><leader>vf <cmd>lua require'telescope.builtin'.live_grep{ cwd = "~/.config/dotfiles/nvim" }<CR>

" I use these pretty often
nnoremap <silent><leader>tg <cmd>lua require'telescope.builtin'.live_grep{}<CR>
nnoremap <silent><leader>tp <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <silent><leader>tm <cmd>lua require'telescope.builtin'.marks{}<CR>

" Not really using this yet, but might in the future
nnoremap <leader>qf :lua require'telescope.builtin'.quickfix{}<CR>
nnoremap <silent><leader>q :lua MakeAndPopulateQFList()<CR>
nnoremap <silent><leader>ls :lua require'telescope.builtin'.loclist{}<CR>

" Seems useful, but not using yet
nnoremap <silent><leader>ch <cmd>lua require('telescope.builtin').command_history{}<CR>

" This works sporadically
nnoremap <silent><leader>fz <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>

" Useful in searching in our vim config as it gets more split up
nnoremap <silent><leader>vv <cmd>lua require'telescope.builtin'.find_files{ cwd = "~/.config/dotfiles/nvim" }<CR>

" For the astronaut in all of us
nnoremap <silent><leader>pl <cmd>lua require('telescope.builtin').planets{show_pluto=true}<CR>

nnoremap <leader>dd :Telescope diagnostics<CR>
nnoremap <leader>ws <cmd>lua require'telescope'.lsp_workspace_symbols()<CR>

" ================== "
" LSP and TreeSitter "
" ================== "

nnoremap H           <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>da :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>df :lua vim.diagnostic.open_float()<CR>

" Not sure about the j & k
nnoremap <leader>dn :lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>j  :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>dp :lua vim.diagnostic.goto_previous()<CR>
nnoremap <leader>k  :lua vim.lsp.diagnostic.goto_prev()<CR>

" Doesn't do what we expect
" nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <leader>gd <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <leader>gd <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <leader>gd <cmd>lua vim.lsp.buf.declaration()<CR>
"
" ============================================================

" I don't use these yet
" nnoremap <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" nnoremap <leader>ft :lua vim.lsp.buf.format()<CR>
" nnoremap <leader>l  <cmd>lua vim.lsp.diagnostic.clear()<CR>

" =================== "
" DAP / Debug Section "
" =================== "

" nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
" nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
" nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>

nnoremap <leader>w :lua require'dapui'.toggle()<CR>

nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>

nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>

nnoremap <silent> <leader>et :lua require("dapui").toggle()<CR>
"
" ============== "
" Random Plugins "
" ============== "

" Lazy Git with Floatterm
nnoremap <silent><leader>lg :FloatermNew lazygit<CR>

" Ranger with Floatterm
nnoremap <silent><leader>rr :FloatermNew --height=0.9 --width=0.9 ranger<CR>

" Color Picker
nnoremap <silent><leader>C :VCoolor<CR>

" vim-trailing-whitespace
noremap <silent><leader>ff :FixWhitespace<cr>

" To Focus on the Current Section of the Code
noremap <silent><leader>gg :Goyo<cr>

" Use Tabularize to line up things
noremap <silent><leader>tt  :Tabularize/

noremap <silent><leader>ch :Cheat<CR>

" Convert a Youtube Link to a Markdown link,
" pulling the title with youtube-dl
nnoremap <silent><leader>ll :call MdLink()<cr>

" Create a Gist of the Selected section,
" and post it to Twitch Chat
vnoremap <silent><leader>gi :call GistAndPost(mode())<cr>

" Custom Twitch Commands
nnoremap <leader>te :call TwitchCommands()<cr>
nnoremap <leader>tl :call LastTwitchMsg()<cr>
nnoremap <leader>tr :call PostChat()<cr>
nnoremap <leader>ts :call PostChatByUser()<cr>
nnoremap <leader>tw :call SendToTwitch()<cr>

" nojam cuts off all fluidsynth processes
nnoremap <leader>nj :!nojam<cr>

" Not using these databases currently
nnoremap <buffer> <leader>po :DB postgres://localhost:5432/beginsounds4<CR>
nnoremap <buffer> <leader>pi :DB postgres://localhost:5432/test_beginsounds3<CR>

" Do we want this????
" Copied over from go
nnoremap <buffer> <leader>t :Make!<CR>
nnoremap <buffer> <leader>y :Dispatch make test<CR>

" vim-projectionist for navigating to Alternate files
nnoremap <leader>a :A<CR>
nnoremap <leader>v :AV<CR>

" Quick flipping of colorschemes to a Random one
" noremap <silent><leader>jl :!wal --theme random_dark &<cr>

" Vim-Signature Toggle for showing Marks
" nnoremap <silent><leader>tm :SignatureToggle<CR>

" Not Currently using Neogit
" nnoremap <leader>ne :Neogit<CR>
