return {

	"folke/which-key.nvim",
	event = "VeryLazy",
	-- init = function()
	-- 	vim.o.timeout = true
	-- 	vim.o.timeoutlen = 300
	-- end,
	opts = {
		setup = {
			show_help = true,
			plugins = { spelling = true },
			key_labels = { ["<leader>"] = "SPC" },
			triggers = "auto",
			window = {
				border = "double",
				position = "bottom",
				margin = { 1, 0, 1, 0 },
				padding = { 1, 1, 1, 1 },
				winblend = 0,
			},
			layout = {
				height = { min = 4, max = 25 },
				width = { min = 20, max = 50 },
				spacing = 3,
				align = "left",
			},
		},
		defaults = {
			mode = { "n", "v" },

			["<leader>n"] = { desc = "Swap next" },
			["<leader>p"] = { desc = "Swap prev" },
			["<leader>s"] = { desc = "Start incremental" },
			["<leader>w"] = { cmd = "<cmd>update!<cr>", desc = "Save" },
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts.setup)
		wk.register(opts.defaults)
	end,
}
