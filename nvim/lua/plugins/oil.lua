return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = function()
		require("oil").setup {
			columns = {
				"icons",
				"size"
			},
			view_options = {
				show_hidden = true
			}
		}
	end
}
