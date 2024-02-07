return {
	'SirVer/ultisnips',
	config = function()
		vim.g.UltiSnipsExpandTrigger = '<tab>'
		vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
		vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'

		-- Snippet directory
		vim.g.UltiSnipsSnippetDirectories = {'~/.config/nvim/ultisnips'}
	end
}
