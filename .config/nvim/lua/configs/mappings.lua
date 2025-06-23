require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

-- master maps
map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "nd", "yyp$", { noremap = true, silent = true, desc = "Duplicate line" })

map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "Escape terminal mode" })

map({ "n", "v" }, "nf", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { noremap = true, silent = true, desc = "Format file" })

map("n", "nr", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], { desc = "Repalce selection in buffer" })

-- telescope
map("n", "<leader>fF", "<cmd>Telescope find_files follow+true no_ignore=true hidden=true<cr>", {desc = "telescope find all files"})

-- delete maps here

local nomap = vim.keymap.del
-- CTRL
nomap("n", "<C-s>")
nomap("n", "<C-c>")

-- line numbers
nomap("n", "<leader>n")
nomap("n", "<leader>rn")

--format
nomap({"n", "x"}, "<leader>fm")

-- diagnostic
nomap("n", "<leader>ds")

-- focus tree
nomap("n", "<leader>e")

-- exit treminal mode
nomap("t", "<C-x>")

-- show themes
nomap("n", "<leader>th")

-- telescope
nomap("n", "<leader>ma")
nomap("n", "<leader>cm")
nomap("n", "<leader>gt")
nomap("n", "<leader>pt")
