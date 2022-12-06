local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup{
  ensure_installed = {"html", "javascript", "typescript", "tsx"},
  sync_install = false,
  auto_install = false,
  ignore_install = { "" },
  highlight = {
    enabled = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    extend_mode = true,
    max_file_lines = nil,
  }
}

