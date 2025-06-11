return {
  "jakewvincent/mkdnflow.nvim",
  ft = "markdown",
  config = function()
    require("mkdnflow").setup {
      links = {
        transform_explicit = function(text)
          text = text:gsub(" ", "_")
          text = text:lower()
          text = os.date "%Y%m%d_" .. text
          return text
        end,
      },
      new_file_template = {
        use_template = true,
      },
    }
    require("cmp").setup.buffer {
      sources = { { name = "mkdnflow" } },
    }
  end,
}
