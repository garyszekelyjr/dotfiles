return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{ "<Space>fb", require("telescope.builtin").buffers },
		{ "<Space>fh", require("telescope.builtin").help_tags },
		{ "<Space>ff", require("telescope.builtin").find_files },
		{ "<Space>fg", require("telescope.builtin").live_grep },
		{ "<Space>fc", function()
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
