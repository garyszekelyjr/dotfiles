return {
	"stevearc/oil.nvim",
	---@module "oil"
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "-", ":Oil<CR>" }
	},
	config = function()
		require("oil").setup {
			view_options = {
				show_hidden = true,
				open_float = {
					enabled = true
				}
			}
		}
	end
}
