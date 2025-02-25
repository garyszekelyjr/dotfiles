return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,
	keys = {
		{ "<C-w>a",    function() Snacks.bufdelete.all() end },
		{ "<C-w>c",    function() Snacks.bufdelete.delete() end },
		{ "<C-w>o",    function() Snacks.bufdelete.other() end },
		{ "<Leader>`", function() Snacks.terminal.toggle() end },
	},
	---@type snacks.Config
	opts = {
		bufdelete = { enabled = true },
		indent = { enabled = true },
		terminal = { enabled = true },
	}
}
