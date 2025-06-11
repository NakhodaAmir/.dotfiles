return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    { "<Leader>tx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics" },
    { "<Leader>tX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer diagnostics" },
    { "<Leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols" },
    {
      "<Leader>tl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references '/ ...",
    },
    { "<Leader>tL", "<cmd>Trouble loclist toggle<cr>", desc = "Location list" },
    { "<Leader>tq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List" },
  },
}
