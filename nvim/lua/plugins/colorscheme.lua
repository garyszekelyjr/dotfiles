return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = true,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end
	},
	{
		"folke/tokyonight.nvim",
		enabled = false,
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end
	}
}
