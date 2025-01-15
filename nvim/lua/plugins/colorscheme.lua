return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = false,
		opts = {
			styles = {
				latte = "latte",
				frappe = "frappe",
				macchiato = "macchiato",
				mocha = "mocha"
			}
		},
		config = function(_, opts)
			vim.cmd.colorscheme("catppuccin-" .. opts.styles.macchiato)
		end
	},
	{
		"folke/tokyonight.nvim",
		enabled = true,
		lazy = false,
		priority = 1000,
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
