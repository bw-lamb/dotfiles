vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false 
vim.opt.relativenumber = true
vim.opt.textwidth = 180

-- set <leader> to space
vim.g.mapleader = ' '
-- set <localleader>, also to space. This shouldn't be a problem?
vim.g.maplocalleader = ' '

-- set whichwrap+=<,>,h,l
vim.opt.whichwrap[#vim.opt.whichwrap + 1]="<"
vim.opt.whichwrap[#vim.opt.whichwrap + 1]=">"
vim.opt.whichwrap[#vim.opt.whichwrap + 1]="h"
vim.opt.whichwrap[#vim.opt.whichwrap + 1]="l"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.cmd.colorscheme("zenburn")
