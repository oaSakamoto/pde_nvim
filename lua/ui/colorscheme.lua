return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		flavor = "latte",
		config = function()
			vim.cmd([[colorscheme catppuccin-mocha]])
		end,
	},
}
