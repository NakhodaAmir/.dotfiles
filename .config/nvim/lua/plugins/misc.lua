return -- Lua
{
  "folke/zen-mode.nvim",
  opts = {},
  keys = {
    { "<leader>z", "<cmd>lua require('zen-mode').toggle()<cr>", noremap = true, silent = true, desc = "Toggle Zen Mode" },
  },
}
