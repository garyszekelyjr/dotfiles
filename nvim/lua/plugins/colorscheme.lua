return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = false,
		config = function()
			vim.cmd.colorscheme("catppuccin-frappe")
		end
	},
	{
		"folke/tokyonight.nvim",
		enabled = false,
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end
	},
	{
		"rebelot/kanagawa.nvim",
		enabled = true,
		config = function()
			vim.cmd.colorscheme("kanagawa-dragon")
		end
	}
}
