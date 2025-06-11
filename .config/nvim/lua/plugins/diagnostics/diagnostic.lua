return {
  "rachartier/tiny-inline-diagnostic.nvim",
  init = function()
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "None" })
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#f07178" })
    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffcb6b" })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#c3e88d" })
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#c792ea" })
  end,
  lazy = false,
  event = "VeryLazy", -- Or `LspAttach`
  priority = 1000, -- needs to be loaded in first
  opts = {
    preset = "classic",
    transparent_bg = true,
    options = {
      use_icons_from_diagnostic = true,
      throttle = 0,
      enable_on_insert = true,
      show_all_diags_on_cursorline = true,
    },
  },
}
