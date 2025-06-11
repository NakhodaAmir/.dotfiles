return {
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
}
