noremap ,r :!rustc %<cr>


map <leader>gh :call VimuxRunCommand("clear; make")<CR>
" map <leader>gy :call VimuxRunCommand("clear; cd playground; go build . && ./playground")<CR>
" map <leader>gl :call VimuxRunCommand("clear; go run . ")<CR>
map <Leader>gj :VimuxCloseRunner<CR>
