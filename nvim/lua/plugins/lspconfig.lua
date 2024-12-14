return {
	{
		"github/copilot.vim",
		enabled = false
	},
	{
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
			require('lspconfig').gopls.setup {}
			require('lspconfig').html.setup {}
			require('lspconfig').lua_ls.setup {}
			require("lspconfig").pyright.setup {}
			require("lspconfig").ruff.setup {}
			require("lspconfig").svelte.setup {}
			require("lspconfig").ts_ls.setup {}

			vim.diagnostic.config({
				update_in_insert = true
			})

			vim.api.nvim_create_autocmd("BufWritePre", {
				callback = function(args)
					vim.lsp.buf.format({ bufnr = args.buf })
				end
			})
		end
	}
}
