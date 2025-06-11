return {
  "stevearc/conform.nvim",
  lazy = false,
  event = "BufWritePre", -- uncomment for format on save
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      css = { "prettier" },
      html = { "prettier" },
      python = { "ruff_format" },
    },
  },
}
