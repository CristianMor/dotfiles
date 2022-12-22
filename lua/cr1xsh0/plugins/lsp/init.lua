local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print("A ocurrido un problema con la instalacion de lspconfig")
  return
end

require "cr1xsh0.lsp.mason"
require("cr1xsh0.lsp.handlers").setup()
require "cr1xsh0.lsp.null-ls"

