require("nvchad.options")

local opt = vim.opt --options

opt.relativenumber = true

opt.shell = "/usr/bin/fish" -- or just "fish" if it's in your PATH
opt.shellcmdflag = "-c"
opt.shellredir = ">%s 2>&1"
opt.shellpipe = "2>&1 | tee %s"

opt.fileformat = "unix"

local g = vim.g

g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/snippets"
