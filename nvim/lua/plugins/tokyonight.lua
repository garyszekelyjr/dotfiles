return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		day = "day",
		moon = "moon",
		storm = "storm",
		night = "night"
	},
	config = function(_, opts)
		vim.cmd.colorscheme("tokyonight-" .. opts.night)
	end

}
