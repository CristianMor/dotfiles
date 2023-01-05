local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	print("Existe un error con treesitter")
	return
end

treesitter.setup({
	highlight = {
		enabled = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"html",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"css",
		"markdown",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	auto_install = true,
})
