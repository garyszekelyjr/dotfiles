return {
	{
		"github/copilot.vim",
		enabled = true
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			'saghen/blink.cmp',
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{
							path = "${3rd}/luv/library",
							words = { "vim%.uv" }
						}
					}
				}
			}
		},
		opts = {
			lsps = {
				bashls = {},
				docker_compose_language_service = {},
				dockerls = {},
				gopls = {},
				html = {},
				lemminx = {},
				lua_ls = {},
				pyright = {},
				ruff = {},
				rust_analyzer = {},
				svelte = {},
				taplo = {},
				ts_ls = {}
			}
		},
		config = function(_, opts)
			for lsp, config in pairs(opts.lsps) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				require("lspconfig")[lsp].setup(config)
			end
		end
	}
}
