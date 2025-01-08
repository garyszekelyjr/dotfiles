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

		vim.keymap.set("n", "<Space>fb", require("telescope.builtin").buffers)
		vim.keymap.set("n", "<Space>fh", require("telescope.builtin").help_tags)
		vim.keymap.set("n", "<Space><Space>", require("telescope.builtin").find_files)
		vim.keymap.set("n", "<Space>fg", require("telescope.builtin").live_grep)
		vim.keymap.set("n", "<Space>fc", function()
			require("telescope.builtin").find_files { cwd = vim.fn.stdpath("config") }
		end)
	end
}
