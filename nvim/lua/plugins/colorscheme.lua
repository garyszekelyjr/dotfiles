return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = true,
		opts = {
			styles = {
				latte = "latte",
				frappe = "frappe",
				macchiato = "macchiato",
				mocha = "mocha"
			}
		},
		config = function(_, opts)
			vim.cmd.colorscheme("catppuccin-" .. opts.styles.mocha)
		end
	},
	{
		"folke/tokyonight.nvim",
		enabled = false,
		opts = {
			styles = {
				day = "day",
				moon = "moon",
				storm = "storm",
				night = "night"
			}
		},
		config = function(_, opts)
			vim.cmd.colorscheme("tokyonight-" .. opts.styles.night)
		end
	}
}
