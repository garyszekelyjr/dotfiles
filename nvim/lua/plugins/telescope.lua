return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{ "<Leader>fb", require("telescope.builtin").buffers },
		{ "<Leader>fh", require("telescope.builtin").help_tags },
		{ "<Leader>ff", require("telescope.builtin").find_files },
		{ "<Leader>fg", require("telescope.builtin").live_grep },
		{ "<Leader>fc", function()
			require("telescope.builtin").find_files { cwd = vim.fn.stdpath("config") }
		end }
	},
	config = function()
		require("telescope").setup {
			defaults = {
				file_ignore_patterns = {
					".git",
					".venv",
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
