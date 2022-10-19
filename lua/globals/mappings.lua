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
vim.keymap.set("n", "<leader>fw", function() require("telescope.builtin").live_grep() end)
vim.keymap.set("n", "<leader>fW",
    function() require("telescope.builtin").live_grep { additional_args = function(args) return vim.list_extend(args,
        { "--hidden", "--no-ignore" }) end, } end)
vim.keymap.set("n", "<leader>gt", function() require("telescope.builtin").git_status() end)
vim.keymap.set("n", "<leader>gb", function() require("telescope.builtin").git_branches() end)
vim.keymap.set("n", "<leader>gc", function() require("telescope.builtin").git_commits() end)
vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end)
vim.keymap.set("n", "<leader>fF",
    function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end)
vim.keymap.set("n", "<leader>fb", function() require("telescope.builtin").buffers() end)
vim.keymap.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end)
vim.keymap.set("n", "<leader>fm", function() require("telescope.builtin").marks() end)
vim.keymap.set("n", "<leader>fo", function() require("telescope.builtin").oldfiles() end)
vim.keymap.set("n", "<leader>fc", function() require("telescope.builtin").grep_string() end)
vim.keymap.set("n", "<leader>sb", function() require("telescope.builtin").git_branches() end)
vim.keymap.set("n", "<leader>sh", function() require("telescope.builtin").help_tags() end)
vim.keymap.set("n", "<leader>sm", function() require("telescope.builtin").man_pages() end)
vim.keymap.set("n", "<leader>sn", function() require("telescope").extensions.notify.notify() end)
vim.keymap.set("n", "<leader>sr", function() require("telescope.builtin").registers() end)
vim.keymap.set("n", "<leader>sk", function() require("telescope.builtin").keymaps() end)
vim.keymap.set("n", "<leader>sc", function() require("telescope.builtin").commands() end)
vim.keymap.set("n", "<leader>ls", function() require("telescope.builtin").lsp_document_symbols() end)
vim.keymap.set("n", "<leader>lG", function() require("telescope.builtin").lsp_workspace_symbols() end)
vim.keymap.set("n", "<leader>lR", function() require("telescope.builtin").lsp_references() end)
vim.keymap.set("n", "<leader>lD", function() require("telescope.builtin").diagnostics() end)
