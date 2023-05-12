local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("Ocurrio un problema con mason")
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("Ocurrio un problema con mason_lspconfig")
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("Ocurrio un problema con mason_null_ls")
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
	"jdtls",
}

mason_lspconfig.setup({
	ensure_installed = servers,
})

local servers_null_ls = {
	"prettier",
	"stylua",
	"eslint_d",
}

mason_null_ls.setup({
	ensure_installed = servers_null_ls,
})
