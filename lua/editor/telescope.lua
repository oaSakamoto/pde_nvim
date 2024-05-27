return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
  keys = {
    {"<leader>tf", "<cmd>Telescope find_files<cr>"},
    {"<leader>tb", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr><Esc>"},
    {"<leader>tr", "<cmd>Telescope file_browser<cr><Esc>"},
  },
	opts = {
		defaults = {
			prompt_prefix = "   ",
			selection_caret = "  ",
			entry_prefix = "  ",
			initial_mode = "normal",
			selection_strategy = "reset",
			sorting_strategy = "ascending",
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.55,
					results_width = 0.8,
				},
				vertical = {
					mirror = false,
				},
				width = 0.87,
				height = 0.80,
				preview_cutoff = 120,
			},
			border = {},
			borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
			color_devicons = true,
			set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
	end,
}
