require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "nd", "yyp$", { noremap = true, silent = true, desc = "Duplicate line" })

map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "Escape terminal mode" })

map({ "n", "v" }, "nf", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { noremap = true, silent = true, desc = "Format file" })

map("n", "nr", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], { desc = "Repalce selection in buffer" })
