return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require("telescope").setup {
			defaults = {
				file_ignore_patterns = {
					".git",
					"node_modules",
					"__pycache__"
				}
			},
			pickers = {
				find_files = {
					hidden = true
				}
			},
			extensions = {
				fzf = {}
			}
		}

		require("telescope").load_extension("fzf")
	end
}
