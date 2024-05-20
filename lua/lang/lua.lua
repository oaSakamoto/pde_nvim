return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "lua", "luadoc", "luap" })
		end,
	},
}
