return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,
	---@type snacks.Config
	opts = {
		git = { enabled = true },
		image = { enabled = true },
		indent = {
			enabled = true,
			chunk = { enabled = true }
		},
	}
}
