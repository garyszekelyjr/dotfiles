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
	config = function()
		require('lspconfig').gopls.setup {
			cmd = {
				"gopls",
				root = "~/go/bin"
			},
			on_attach = on_attach
		}

		require('lspconfig').lua_ls.setup { }
		require("lspconfig").pyright.setup{ }
		require("lspconfig").svelte.setup { }
		require("lspconfig").ts_ls.setup { }

		vim.diagnostic.config({
			update_in_insert = true
		})
	end
}
