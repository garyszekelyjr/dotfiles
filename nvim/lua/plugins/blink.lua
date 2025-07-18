return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "*",
	---@module "blink.cmp"
	---@type blink.cmp.Config
	opts = {
		cmdline = {
			completion = {
				menu = {
					auto_show = true
				}
			}
		},
		keymap = { preset = "default" },
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = 'mono'
		},
		signature = { enabled = true },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer', 'markdown' },
			providers = {
				markdown = {
					name = 'RenderMarkdown',
					module = 'render-markdown.integ.blink',
					fallbacks = { 'lsp' },
				},
			},
		},
	},
}
