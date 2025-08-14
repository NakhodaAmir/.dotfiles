return {
	{
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
	},

	{
		"mfussenegger/nvim-lint",
		lazy = false,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("lint").linters_by_ft = {
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
			}

			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require("nvchad.configs.lspconfig").defaults()

			local servers = {
				html = {},
				cssls = {},
				lua_ls = {},
				marksman = {},
				ts_ls = {},
				ruff = {},
				clangd = {
					on_attach = function(client, bufnr)
						client.server_capabilities.signatureHelpProvider = false
						require("nvchad.configs.lspconfig").on_attach(client, bufnr)
					end,
				},
				ltex = {
					settings = {
						ltex = {
							language = "en-GB",
						},
					},
				},
				pyright = {
					settings = {
						pyright = {
							-- Using Ruff's import organizer
							disableOrganizeImports = true,
						},
						python = {
							analysis = {
								-- Ignore all files for analysis to exclusively use Ruff for linting
								ignore = { "*" },
							},
						},
					},
				},
			}

			for name, opts in pairs(servers) do
				vim.lsp.enable(name)
				vim.lsp.config(name, opts)
			end

			vim.diagnostic.config({
				virtual_text = false,
				underline = true,
				severity_sort = true,
				update_in_insert = true,
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
    dependencies = {"OXY2DEV/markview.nvim"},
    lazy = false,
		build = ":TSUpdate", -- Automatically update parsers
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"bash",
				"json",
				"toml",
				"yaml",
				"html",
				"css",
				"rust",
				"markdown",
				"markdown_inline",
				"javascript",
				"typescript",
				"python",
				"c",
				"cpp",
				"fish",
        "latex"
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true, -- Enable auto-indentation
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
		},
	},

	{
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
	},

	{
		"folke/which-key.nvim",
		lazy = false,
		opts = {
			spec = {
				{ "<leader>f", group = "Find" },
				{ "<leader>d", group = "Debugger" },
				{ "<leader>t", group = "Diagnostics" },
			},
			triggers = {
				{ "<auto>", mode = "nixsotc" },
				{ "n", mode = { "n", "v" } },
			},
		},
	},
}
