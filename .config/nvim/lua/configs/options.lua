require("nvchad.options")

local opt = vim.opt --options

opt.relativenumber = true

vim.opt.shell = "/usr/bin/fish" -- or just "fish" if it's in your PATH
vim.opt.shellcmdflag = "-c"
vim.opt.shellredir = ">%s 2>&1"
vim.opt.shellpipe = "2>&1 | tee %s"
