require("config.options")
require("config.lazy")

vim.api.nvim_create_autocmd("UIEnter", {
  command = "Telescope file_browser",
})
