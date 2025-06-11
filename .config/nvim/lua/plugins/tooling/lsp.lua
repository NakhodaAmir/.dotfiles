return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
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
}
