return {
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
			cssls = {},
			docker_compose_language_service = {},
			dockerls = {},
			fish_lsp = {},
			gopls = {},
			html = {},
			jdtls = {},
			jsonls = {},
			lemminx = {},
			lua_ls = {},
			metals = {},
			nixd = {},
			nushell = {},
			powershell_es = {
				bundle_path = "C:/Program Files/PowerShellEditorServices"
			},
			pyright = {},
			r_language_server = {},
			ruby_lsp = {},
			ruff = {},
			rust_analyzer = {},
			svelte = {},
			tailwindcss = {},
			taplo = {},
			ts_ls = {},
			zls = {}
		}
	},
	config = function(_, opts)
		for lsp, config in pairs(opts.lsps) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			require("lspconfig")[lsp].setup(config)
		end
	end
}
