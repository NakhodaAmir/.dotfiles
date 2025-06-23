return {
	{
		"saecki/crates.nvim",
		ft = { "toml" },
		keys = {
			{ "<leader>ct", "<cmd>lua require('crates').toggle()<cr>", silent = true, desc = "Toggle Crates" },
			{ "<leader>cr", "<cmd>lua require('crates').reload()<cr>", silent = true, desc = "Reload Crates" },

			{ "<leader>cc", "<cmd>lua require('crates').show_popup()<cr>", silent = true, desc = "Show Pop Up" },
			{
				"<leader>cv",
				"<cmd>lua require('crates').show_versions_popup()<cr>",
				silent = true,
				desc = "Show Versions",
			},
			{
				"<leader>cf",
				"<cmd>lua require('crates').show_features_popup()<cr>",
				silent = true,
				desc = "Show Features",
			},
			{
				"<leader>cd",
				"<cmd>lua require('crates').show_dependencies_popup()<cr>",
				silent = true,
				desc = "Show Dependencies",
			},

			{
				"<leader>cu",
				"<cmd>lua require('crates').update_crate()<cr>",
				mode = { "n", "v" },
				silent = true,
				desc = "Update Crate(s)",
			},
			{
				"<leader>ca",
				"<cmd>lua require('crates').update_all_crates()<cr>",
				silent = true,
				desc = "Update All Crates",
			},
			{
				"<leader>cU",
				"<cmd>lua require('crates').upgrade_crate()<cr>",
				mode = { "n", "v" },
				silent = true,
				desc = "Upgrade Crate(s)",
			},
			{
				"<leader>cA",
				"<cmd>lua require('crates').upgrade_all_crates()<cr>",
				silent = true,
				desc = "Upgrade All Crates",
			},

			{
				"<leader>cx",
				"<cmd>lua require('crates').expand_plain_crate_to_inline_table()<cr>",
				silent = true,
				desc = "Expand Crate",
			},
			{
				"<leader>cX",
				"<cmd>lua require('crates').extract_crate_into_table()<cr>",
				silent = true,
				desc = "Extract Crate",
			},

			{ "<leader>cH", "<cmd>lua require('crates').open_homepage()<cr>", silent = true, desc = "Open Homepage" },
			{
				"<leader>cR",
				"<cmd>lua require('crates').open_repository()<cr>",
				silent = true,
				desc = "Open Repository",
			},
			{
				"<leader>cD",
				"<cmd>lua require('crates').open_documentation()<cr>",
				silent = true,
				desc = "Open Documentation",
			},
			{ "<leader>cC", "<cmd>lua require('crates').open_crates_io()<cr>", silent = true, desc = "Open crates.io" },
			{ "<leader>cL", "<cmd>lua require('crates').open_lib_rs()<cr>", silent = true, desc = "Open lib.rs" },
		},
		config = function()
			require("crates").setup({
				completion = {
					cmp = {
						enabled = true,
					},
				},
				popup = {
					autofocus = true,
				},
			})
			require("cmp").setup.buffer({
				sources = { { name = "crates" } },
			})
		end,
	},

	{
		"mrcjkb/rustaceanvim",
		version = "^6", -- Recommended
		lazy = false, -- This plugin is already lazy
		ft = "rust",
		keys = {
			{ "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", desc = "Debug Rust Testables", ft = "rust" },
		},
		config = function()
			vim.lsp.inlay_hint.enable(true)
		end,
	},
}
