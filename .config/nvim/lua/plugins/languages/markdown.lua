return {
	{
		"brianhuster/live-preview.nvim",
		ft = "markdown",
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		keys = {
			{ "<leader>ms", "<cmd>LivePreview start<cr>", desc = "Start Markdown Preview" },
			{ "<leader>mc", "<cmd>LivePreview close<cr>", desc = "Close Markdown Preview" },
			{ "<leader>mp", "<cmd>LivePreview pick<cr>", desc = "Open Markdown Picker" },
		},
	},

	{
		"OXY2DEV/markview.nvim",
		ft = "markdown",
		lazy = false,
	},
}
