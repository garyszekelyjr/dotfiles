return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = false,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end
	},
	{
		"folke/tokyonight.nvim",
		enabled = true,
		config = function()
			vim.cmd.colorscheme("tokyonight")
		end
	}
}
