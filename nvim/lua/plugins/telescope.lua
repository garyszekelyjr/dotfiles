return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{ "<Leader>fb", ":Telescope buffers<CR>" },
		{ "<Leader>fc", ":Telescope find_files cwd=" .. vim.fn.stdpath("config") .. "<CR>" },
		{ "<Leader>fg", ":Telescope live_grep<CR>" },
		{ "<Leader>fh", ":Telescope help_tags<CR>" }
	},
	opts = {
		pickers = {
			find_files = {
				hidden = false
			}
		},
		extensions = {
			fzf = {}
		}

	},
	config = function()
		require("telescope").load_extension("fzf")
	end
}
