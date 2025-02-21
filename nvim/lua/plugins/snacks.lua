return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,
	keys = {
		{ "<C-w>a",     function() Snacks.bufdelete.all() end },
		{ "<C-w>c",     function() Snacks.bufdelete.delete() end },
		{ "<C-w>o",     function() Snacks.bufdelete.other() end },
		{ "<Leader>b",  function() Snacks.picker.buffers() end },
		{ "<Leader>c",  function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end },
		{ "<Leader>e",  function() Snacks.picker.explorer() end },
		{ "<Leader>f",  function() Snacks.picker.files() end },
		{ "<Leader>g",  function() Snacks.picker.grep() end },
		{ "<Leader>h",  function() Snacks.picker.help() end },
		{ "<Leader>r",  function() Snacks.picker.registers() end },
		{ "<Leader>gd", function() Snacks.picker.git_diff() end },
		{ "<Leader>`",  function() Snacks.terminal.toggle() end },
	},
	---@type snacks.Config
	opts = {
		bufdelete = { enabled = true },
		indent = { enabled = true },
		picker = { enabled = true },
		terminal = { enabled = true },
	}
}
