return {
  "aaronik/treewalker.nvim",
  keys = {
    -- Movement with arrow keys
    { "<C-Up>", "<cmd>Treewalker Up<cr>", mode = { "n", "v" }, desc = "Treewalker Up" },
    { "<C-Down>", "<cmd>Treewalker Down<cr>", mode = { "n", "v" }, desc = "Treewalker Down" },
    { "<C-Left>", "<cmd>Treewalker Left<cr>", mode = { "n", "v" }, desc = "Treewalker Left" },
    { "<C-Right>", "<cmd>Treewalker Right<cr>", mode = { "n", "v" }, desc = "Treewalker Right" },

    -- Swap with Shift + arrow keys
    { "<C-M-Up>", "<cmd>Treewalker SwapUp<cr>", desc = "Treewalker Swap Up" },
    { "<C-M-Down>", "<cmd>Treewalker SwapDown<cr>", desc = "Treewalker Swap Down" },
    { "<C-M-Left>", "<cmd>Treewalker SwapLeft<cr>", desc = "Treewalker Swap Left" },
    { "<C-M-Right>", "<cmd>Treewalker SwapRight<cr>", desc = "Treewalker Swap Right" },
  },
}
