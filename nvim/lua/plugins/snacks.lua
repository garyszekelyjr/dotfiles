return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,
	---@type snacks.Config
	opts = {
		bufdelete = { enabled = true },
		indent = {
			enabled = true,
			chunk = {
				enabled = true
			}
		},
	}
}
