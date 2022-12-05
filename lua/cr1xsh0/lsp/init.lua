local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "cr1xsh0.lsp.mason"
require("cr1xsh0.lsp.handlers").setup()
require "cr1xsh0.lsp.null-ls"

