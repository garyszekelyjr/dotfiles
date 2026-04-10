vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "blink.cmp" and kind == "update" then
			if not ev.data.active then vim.cmd.packadd("blink.cmp") end
			vim.cmd("BlinkCmp build")
		end
	end
})


vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		version = "v1"

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
