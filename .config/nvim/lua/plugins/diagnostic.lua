return {
	{
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
	},

	{
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
	},
}
