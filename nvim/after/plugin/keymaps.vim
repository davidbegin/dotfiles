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
noremap <leader>js :%!python -m json.tool<cr>

" Toggle Folding
" TODO: Make this better
noremap <leader>fo :set fdm=indent<CR>
noremap <leader>fi zR; :set fdm=manual<CR>

" Use Vim spellcheck and chose the first presented option
" for the word under the cursor
noremap <leader>s 1z=e

" Toggle a cursor for focusing on the cursor
" Twitch chat hates it
nnoremap <leader>H :set cursorline! cursorcolumn!<CR>
" nnoremap <leader>h :set cursorline!<CR>

" Built in Vim Mappings
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Toggling Line Numbers on
nnoremap <leader>no :set rnu!<CR>
nnoremap <leader>ni :set nu!<CR>

" Faster saving
" ...although maybe this should change
noremap ,, <esc>:w!<cr>

" Focus and redistribute split windows
noremap ff :resize 100 <CR> <BAR> :vertical resize 220<CR>
noremap fm <C-w>=

" Faster Vimrc opening
nnoremap <leader>ev :vs $MYVIMRC<CR>

" Quick reloading .vimrc
noremap <leader>rc :source ~/.config/nvim/init.vim<cr>

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
" nnoremap <leader>scy :set scl=yes<CR>
" nnoremap <leader>scn :set scl=no<CR>

" ========= "
" Telescope "
" ========= "

" Telescope
nnoremap <leader>gr    <cmd>lua require'telescope.builtin'.lsp_references{}<CR>

" I use these pretty often
nnoremap <leader>tg <cmd>lua require'telescope.builtin'.live_grep{}<CR>
nnoremap <leader>tp <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <leader>tm <cmd>lua require'telescope.builtin'.marks{}<CR>

" Not really using this yet, but might in the future
nnoremap <leader>qf :lua require'telescope.builtin'.quickfix{}<CR>
nnoremap <leader>q :lua MakeAndPopulateQFList()<CR>
nnoremap <leader>ls :lua require'telescope.builtin'.loclist{}<CR>

" Seems useful, but not using yet
nnoremap <leader>ch <cmd>lua require('telescope.builtin').command_history{}<CR>

" This works sporadically
nnoremap <leader>fz <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>

" Useful in searching in our vim config as it gets more split up
nnoremap <leader>vv <cmd>lua require'telescope.builtin'.find_files{ cwd = "~/.config/dotfiles/nvim" }<CR>

" Search Within Vim Config Viles
nnoremap <leader>vf <cmd>lua require'telescope.builtin'.live_grep{ cwd = "~/.config/dotfiles/nvim" }<CR>

" I'm not sure what this is for
noremap <leader>dd :Telescope diagnostics<CR>

" ================== "
" LSP and TreeSitter "
" ================== "

nnoremap H          :lua vim.lsp.buf.hover()<CR>
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

" nnoremap <F10> :lua require'dap'.step_over()<CR>
" nnoremap <F11> :lua require'dap'.step_into()<CR>
" nnoremap <F12> :lua require'dap'.step_out()<CR>

nnoremap <leader>w :lua require'dapui'.toggle()<CR>

nnoremap <leader>b :lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>

nnoremap <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <leader>dl :lua require'dap'.run_last()<CR>
nnoremap <leader>et :lua require("dapui").toggle()<CR>

" ============== "
" Random Plugins "
" ============== "

" Lazy Git with Floatterm
nnoremap <leader>lg :FloatermNew lazygit<CR>

" Ranger with Floatterm
nnoremap <leader>rr :FloatermNew --height=0.9 --width=0.9 ranger<CR>

" Color Picker
nnoremap <leader>C :VCoolor<CR>

" vim-trailing-whitespace
noremap <leader>ff :FixWhitespace<cr>

" To Focus on the Current Section of the Code
noremap <leader>gg :Goyo<cr>

" Use Tabularize to line up things
noremap <leader>tt  :Tabularize/

noremap <leader>ch :Cheat<CR>

" Convert a Youtube Link to a Markdown link,
" pulling the title with youtube-dl
nnoremap <leader>ll :call MdLink()<cr>

" Create a Gist of the Selected section,
" and post it to Twitch Chat
vnoremap <leader>gi :call GistAndPost(mode())<cr>

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
