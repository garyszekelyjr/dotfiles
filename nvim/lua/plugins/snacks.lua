return {
	"folke/snacks.nvim",
	keys = {
		{ "<Leader>ff", ":lua Snacks.explorer.open()<CR>" },
		{ "`",          ":lua Snacks.terminal.toggle()<CR>" }
	},
	---@type snacks.Config
	opts = {
		explorer = {},
		indent = {},
		terminal = {}
	}
}
