vim.pack.add({ "https://github.com/hedyhli/outline.nvim" })

require("outline").setup({
	outline_window = {
		auto_jump = true
	}
})

vim.keymap.set("n", "<Space>o", ":topleft Outline<CR>")
