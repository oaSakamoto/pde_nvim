return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		flavor = "latte",
		config = function()
			local colors = require("catppuccin.palettes").get_palette("mocha")
			vim.cmd([[colorscheme catppuccin-mocha]])
			-- Redefine a cor para variaveis
			vim.api.nvim_set_hl(0, "@variable", { fg = colors.teal })
		end,
	},
}
