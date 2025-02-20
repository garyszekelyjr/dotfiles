return {
	"folke/snacks.nvim",
	keys = {
		{ "<Leader>x",       function() Snacks.bufdelete.all() end },
		{ "<Leader><Space>", function() Snacks.picker.smart() end },
		{ "<Leader>b",       function() Snacks.picker.buffers() end },
		{ "<Leader>c",       function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end },
		{ "<Leader>e",       function() Snacks.picker.explorer() end },
		{ "<Leader>g",       function() Snacks.picker.grep() end },
		{ "<Leader>h",       function() Snacks.picker.help() end },
		{ "<Leader>gd",      function() Snacks.picker.git_diff() end },
		{ "<Leader>`",       function() Snacks.terminal.toggle() end }
	},
	---@type snacks.Config
	opts = {
		bufdelete = {},
		indent = {},
		picker = {},
		terminal = {}
	}
}
