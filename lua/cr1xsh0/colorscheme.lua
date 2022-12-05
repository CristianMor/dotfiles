-- vim.cmd "colorscheme default"
--

local colorscheme = "nordfox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " no encontrado!")
  return
end

require('nightfox').setup({
  options = {
    transparent = true,
    styles = {
      comments = "italic",
    } 
  }
})
