return {
  "jbyuki/nabla.nvim",
  dependencies = {
    "nvim-neo-tree/neo-tree.nvim",
    "williamboman/mason.nvim",
  },
  ft = "markdown",
  lazy = true,
  keys = {
    {"N", "<cmd>lua require('nabla').popup()<cr>", desc = "Nabla Popup"}
  }
}
