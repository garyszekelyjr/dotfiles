return {
	"neovim/nvim-lspconfig",
	dependencies = {
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
			docker_language_server = {},
			fish_lsp = {},
			gopls = {},
			html = {},
			hyprls = {},
			jdtls = {},
			jsonls = {},
			lemminx = {},
			ltex = {},
			lua_ls = {
				settings = {
					Lua = {
						format = {
							enable = true,
							defaultConfig = {
								quote_style = "double"
							}
						}
					}
				}

			},
			marksman = {},
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
			vim.lsp.enable(lsp)
			vim.lsp.config(lsp, config)
		end
	end
}
