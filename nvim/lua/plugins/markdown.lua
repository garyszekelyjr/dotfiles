return {
	'MeanderingProgrammer/render-markdown.nvim',
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
	keys = {
		{ "<Leader>p", ":RenderMarkdown buf_toggle<CR>" }
	},
	lazy = false,
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
}
