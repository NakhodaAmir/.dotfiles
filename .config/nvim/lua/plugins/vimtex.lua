return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_view_method = "zathura_simple"
    vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

    vim.g.vimtex_compiler_latexmk = {
      continuous = 1,
      options = { "-xelatex", "-synctex=1", "-silent", "-pdf", "-interaction=nonstopmode", "-file-line-error" },
    }
  end,
}
