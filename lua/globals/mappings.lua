options = { noremap = true }

-- Neotree
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>o', '<cmd>Neotree focus<cr>', options)

-- Smart Splits
vim.api.nvim_set_keymap('n', '<C-h>', ':lua require("smart-splits").move_cursor_left() <cr>', options)
vim.api.nvim_set_keymap('n', '<C-j>', ':lua require("smart-splits").move_cursor_down() <cr>', options)
vim.api.nvim_set_keymap('n', '<C-k>', ':lua require("smart-splits").move_cursor_up() <cr>', options)
vim.api.nvim_set_keymap('n', '<C-l>', ':lua require("smart-splits").move_cursor_right() <cr>', options)
vim.api.nvim_set_keymap('n', '<C-Up>', ':lua require("smart-splits").resize_up() <cr>', options)
vim.api.nvim_set_keymap('n', '<C-Down>', ':lua require("smart-splits").resize_down() <cr>', options)
vim.api.nvim_set_keymap('n', '<C-Left>', ':lua require("smart-splits").resize_left() <cr>', options)
vim.api.nvim_set_keymap('n', '<C-Right>', ':lua require("smart-splits").resize_right() <cr>', options)

vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>w<cr>', options)

-- Indent
vim.api.nvim_set_keymap('v', '<', '<gv', options)
vim.api.nvim_set_keymap('v', '>', '>gv', options)

-- Session manager
vim.api.nvim_set_keymap('n', '<leader>Sl', '<cmd>SessionManager! load_last_session<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>Ss', '<cmd>SessionManager! save_current_session<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>Sd', '<cmd>SessionManager! delete_session<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>Sf', '<cmd>SessionManager! load_session<cr>', options)

-- Bufdelete
vim.api.nvim_set_keymap('n', '<leader>c', '<cmd>Bdelete<cr>', options)

-- Buffer Navigation
vim.api.nvim_set_keymap('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', options)
vim.api.nvim_set_keymap('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', options)

-- Telescope
