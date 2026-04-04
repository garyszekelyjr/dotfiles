vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/stevearc/oil.nvim"
})

require("oil").setup({
	columns = { "icon", "permissions", "size", "mtime" },
	constrain_cursor = "name",
	default_file_explorer = true,
	delete_to_trash = true,
	keymaps = {
		["<Esc>"] = { "actions.close", mode = "n" }
	},
	view_options = {
		show_hidden = true,
	},
	float = {
		preview_split = "right"
	}
})

vim.keymap.set("n", "<Space>-", ":Oil<CR>")
