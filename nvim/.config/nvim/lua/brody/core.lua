vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false 
vim.opt.relativenumber = true
vim.opt.textwidth = 100

-- set whichwrap+=<,>,h,l
vim.opt.whichwrap[#vim.opt.whichwrap + 1]="<"
vim.opt.whichwrap[#vim.opt.whichwrap + 1]=">"
vim.opt.whichwrap[#vim.opt.whichwrap + 1]="h"
vim.opt.whichwrap[#vim.opt.whichwrap + 1]="l"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.cmd.colorscheme("zenburn")
