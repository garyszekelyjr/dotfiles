return {
	"stevearc/oil.nvim",
	---@module "oil"
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "-", ":Oil --float<CR>" }
	},
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			delete_to_trash = true,
			keymaps = {
				["<Esc>"] = { "actions.close", mode = "n" }
			},
			view_options = {
				show_hidden = true,
			},
			float = {
				preview_split = "right"
			}
		})
	end
}
