return {
	"lervag/vimtex",
	config = function()
			vim.cmd([[
				filetype plugin indent on
			]])
			--vim.g.vimtex_view_method = 'zathura'
			vim.g.tex_flavor = "latex"
			vim.g.vimtex_compiler_method = "latexmk"
			vim.opt.conceallevel = 1
			vim.g.tex_conceal = "abdmg"
	end
}
