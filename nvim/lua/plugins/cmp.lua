return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path"
	},
	config = function()
		require("cmp").setup {
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end
			},
			sources = require("cmp").config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'buffer' },
			}),
			mapping = require("cmp").mapping.preset.insert({
				['<CR>'] = require("cmp").mapping.confirm({ select = true })
			})
		}
	end
}
