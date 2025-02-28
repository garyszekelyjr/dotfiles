return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "-", ":Oil --float<CR>" }
	},
	lazy = false,
	---@module "oil"
	---@type oil.SetupOpts
	opts = {
		columns = { "icon", "permissions", "size", "mtime" },
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
	}
}
