return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{ "<Leader>b",  ":Telescope buffers<CR>" },
		{ "<Leader>c",  ":Telescope find_files cwd=" .. vim.fn.stdpath("config") .. "<CR>" },
		{ "<Leader>f",  ":Telescope find_files<CR>" },
		{ "<Leader>g",  ":Telescope live_grep<CR>" },
		{ "<Leader>h",  ":Telescope help_tags<CR>" },
		{ "<Leader>gc", ":Telescope git_bcommits<CR>" },
		{ "<Leader>gs", ":Telescope git_status<CR>" }
	},
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					hidden = false
				}
			},
			extensions = {
				fzf = {}
			}
		})

		require("telescope").load_extension("fzf")
	end
}
