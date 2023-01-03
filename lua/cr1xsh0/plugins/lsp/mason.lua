local mason_status, mason = pcall(require, "mason")
if not mason_status then
  print "Ocurrio un problema con mason"
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  print "Ocurrio un problema con mason_lspconfig"
  return 
end

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

mason.setup(settings)

local servers = {
  "tsserver",
  "html",
  "cssls",
	"sumneko_lua",
  "intelephense",
}

mason_lspconfig.setup {
  ensure_installed = servers,
}

--
-- require("mason-lspconfig").setup({
-- 	ensure_installed = servers,
-- 	automatic_installation = true,
-- })
--
-- local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
-- if not lspconfig_status_ok then
-- 	return
-- end
--
-- local opts = {}
--
-- for _, server in pairs(servers) do
-- 	opts = {
-- 		on_attach = require("cr1xsh0.lsp.handlers").on_attach,
-- 		capabilities = require("cr1xsh0.lsp.handlers").capabilities,
-- 	}
--
-- 	server = vim.split(server, "@")[1]
--
-- 	local require_ok, conf_opts = pcall(require, "cr1xsh0.lsp.settings." .. server)
-- 	if require_ok then
-- 		opts = vim.tbl_deep_extend("force", conf_opts, opts)
-- 	end
--
-- 	lspconfig[server].setup(opts)
-- end
