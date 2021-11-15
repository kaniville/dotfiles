-- Telescope
vim.cmd('nnoremap <M-f> <cmd>Telescope find_files<CR>')
vim.cmd('nnoremap <M-b> <cmd>Telescope buffers<CR>')
vim.cmd('nnoremap <M-h> <cmd>Telescope command_history<CR>')
vim.cmd('nnoremap <M-t> <cmd>Telescope file_browser<CR>')
vim.cmd('nnoremap <M-g> <cmd>Telescope git_commits<CR>')

-- Go to next/previous buffer in buffer list
vim.cmd('nnoremap <TAB> :bnext<CR>')
vim.cmd('nnoremap <S-TAB> :bprevious<CR>')

-- Use jk or kj to escape
vim.cmd ('inoremap jk <Esc>')
vim.cmd ('inoremap kj <Esc>')
