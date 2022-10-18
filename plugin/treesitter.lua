require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    disable = { "html" },
    extended_mode = false,
    max_file_lines = nil,
    colors = {
      "#FFE004",
      "#D26ED5",
      "#1799EE",
    }
  },
  autopairs = { enable = true },
  autotag = { enable = true },
  incremental_selection = { enable = true },
})
