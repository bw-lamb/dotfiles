return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
	-- or                              , branch = '0.1.x',
 	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files Telescope" },
		{ '<leader>lg', '<cmd>Telescope live_grep<cr>'},
	},
    opts = {
    	pickers = {
    		find_files = {
          		-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          		find_command = { "rg", "--files", "--glob", "!**/.git/*", "-L" },
    		},
			grep_string = {
          		-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          		find_command = { "rg", "--files", "--glob", "!**/.git/*", "-L" },
			}
		}
	},
	dependencies = {'nvim-lua/plenary.nvim',
  						'nvim-telescope/telescope-symbols.nvim',
	}
}
