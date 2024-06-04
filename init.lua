require("config.options")
require("config.lazy")

vim.api.nvim_create_autocmd("UIEnter", {
	command = "Telescope file_browser",
})

vim.filetype.add({
	filename = {
		["~/personal/parses_tressitter/tree-sitter-xkb/examples/dvorak"] = "xkb",
	},
})
