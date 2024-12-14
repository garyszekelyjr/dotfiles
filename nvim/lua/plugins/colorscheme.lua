return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = true,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end
	},
}
