local lspsaga_status, saga = pcall(require, "lspsaga")
if not lspsaga_status then
	print("Exite un problema con lspsaga")
	return
end

saga.setup({
	ui = {
		code_action = "🔥",
	},
})
