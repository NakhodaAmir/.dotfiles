return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	keys = {
		{
			"<Leader>dp",
			"<cmd>lua require('dap-python').test_method()<CR>",
			desc = "Debug Python",
			ft = "python",
		},
	},
	config = function(_)
		require("dap-python").setup("debugpy-adapter")
		table.insert(require("dap").configurations.python, {
			type = "python",
			request = "launch",
			name = "Launch Python Program",
			program = "${file}",
			console = "internalConsole",
			cwd = "${workspaceFolder}",
		})
	end,
}
