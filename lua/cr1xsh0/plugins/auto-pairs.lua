-- Setup nvim-cmp
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
	print("Existe un error con nvim-autopairs")
	return
end

npairs.setup({
	check_ts = true, -- Habilitar treesitter
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	},
})

local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
	print("Existe un error con cmp_autopairs")
	return
end

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	print("Existe un error con cmp")
	return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { text = "" } }))
