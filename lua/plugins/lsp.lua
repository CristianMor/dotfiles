local function on_attach()
	-- Key maps para lsp
	vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', { noremap = true } )
	vim.api.nvim_set_keymap('n', '<leader>vd', ':lua vim.lsp.buf.definition()<cr>', { noremap = true } )

	vim.api.nvim_set_keymap('n', '<leader>vo', ':LspRestart<cr>', { noremap = true } )

	-- para moverme entre diagnosticos, errores o info
	vim.api.nvim_set_keymap('n', '<leader>vn', ':lua vim.lsp.diagnostic.goto_next()<cr>', { noremap = true } )
	vim.api.nvim_set_keymap('n', '<leader>vp', ':lua vim.lsp.diagnostic.goto_prev()<cr>', { noremap = true } )

	vim.api.nvim_set_keymap('n', '<leader>vca', ':lua vim.lsp.code_action()<cr>', { noremap = true } )
	vim.api.nvim_set_keymap('n', '<leader>vf', ':lua vim.lsp.formatting()<cr>', { noremap = true } )

	vim.api.nvim_set_keymap('n', '<leader>vi', ':lua vim.lsp.implementation()<cr>', { noremap = true } )
	vim.api.nvim_set_keymap('n', '<leader>vrn', ':lua vim.lsp.rename()<cr>', { noremap = true } )

	require "lsp_signature".on_attach()

	vim.g.completation_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }

end

local lsp_installer = require('nvim-lsp-installer')

lsp_installer.on_server_ready(function(server)
	local opts = {}

	if server.name == "emmet_ls" then
		opts.filetypes = { "html", "css", "blade" }
	end

	opts.on_attach = on_attach


	server:setup(opts)

	vim.cmd[[ do User LspAttachBuffers ]]
end)
