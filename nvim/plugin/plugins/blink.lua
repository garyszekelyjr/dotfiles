vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		version = "v1.10.2"

	},
	"https://github.com/rafamadriz/friendly-snippets"
})

require("blink.cmp").setup({
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
		nerd_font_variant = "mono"
	},
	signature = { enabled = true },
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "markdown" },
		providers = {
			markdown = {
				name = "RenderMarkdown",
				module = "render-markdown.integ.blink",
				fallbacks = { "lsp" },
			},
		},
	},
})
