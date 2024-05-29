vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.python3_host_prog = '/usr/bin/python3'

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { silent = true, noremap = true, desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader>tv', ':vsp | term<CR>', { silent = true, desc = 'Open terminal in vertical split' })
vim.keymap.set('n', '<leader>ts', ':sp | term<CR>', { silent = true, desc = 'Open terminal in horizontal split' })

-- Buffer convenience
vim.keymap.set('n', '<leader>vq', ":bp | vsp | bn | bd<CR>", { silent = true, desc = 'Close vertical split buffer', noremap=true })
vim.keymap.set('n', '<leader>sq', ":bp | sp | bn | bd<CR>", { silent = true, desc = 'Close horiztonal split buffer', noremap=true })
