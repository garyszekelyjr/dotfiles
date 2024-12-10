vim.keymap.set("n", "<Leader>fb", require("telescope.builtin").buffers)
vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files)
vim.keymap.set("n", "<Leader>fg", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<Leader>fh", require("telescope.builtin").help_tags)
vim.keymap.set("n", "<Leader>fn", function()
	require("telescope.builtin").find_files {
		cwd = vim.fn.stdpath("config")
	}
end)
