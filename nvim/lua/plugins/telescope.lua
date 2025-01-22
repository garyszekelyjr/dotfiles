return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{ "<Space>fb", ":Telescope buffers<CR>" },
		{ "<Space>fc", ":Telescope find_files cwd=" .. vim.fn.stdpath("config") .. "<CR>" },
		{ "<Space>ff", ":Telescope find_files<CR>" },
		{ "<Space>fg", ":Telescope live_grep<CR>" },
		{ "<Space>fh", ":Telescope help_tags<CR>" }
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
