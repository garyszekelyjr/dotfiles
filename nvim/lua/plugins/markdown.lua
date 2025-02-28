return {
	'MeanderingProgrammer/render-markdown.nvim',
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
	keys = {
		{ "<Leader>p", ":RenderMarkdown toggle<CR>" }
	},
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
}
