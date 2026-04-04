vim.pack.add({
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-tree/nvim-web-devicons",
})

vim.keymap.set("n", "<Space>p", ":RenderMarkdown buf_toggle<CR>")
