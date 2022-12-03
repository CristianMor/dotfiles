local cmd = vim.cmd
local opt = vim.opt

opt.termguicolors = true

cmd [[colorscheme nightfox]]

require('nightfox').setup({
	options = {
		transparent = true,
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "italic,bold",
		},
	}	
})
