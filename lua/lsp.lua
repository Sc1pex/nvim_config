lsp = {}

local opts = {
    on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
        vim.keymap.set("n", "<leader>C", vim.lsp.buf.code_action, { buffer = 0 })
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.formatting_sync, { buffer = 0 })
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
        vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, { buffer = 0 })
    end
}

lsp.setup_server = function(server)
    require("lspconfig")[server].setup(opts)
end

return lsp
