require("mason").setup({})

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup_handlers({
    function(server)
        require("lsp").setup_server(server) end
})
