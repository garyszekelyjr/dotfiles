vim.pack.add({ "https://github.com/hedyhli/outline.nvim" })

require("outline").setup({
	outline_window = {
		auto_jump = true,
		width = 30,
		auto_width = { enabled = true }
	}
})

vim.keymap.set("n", "<Space>o", ":topleft Outline!<CR>")
