return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
	},
	config = function()
		require("telescope").setup {
			defaults = {
				file_ignore_patterns = { "node_modules", "__pycache__" }
			}
		}

		vim.keymap.set("n", "<Leader>fb", require("telescope.builtin").buffers)
		vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files)
		vim.keymap.set("n", "<Leader>fg", require("telescope.builtin").live_grep)
		vim.keymap.set("n", "<Leader>fh", require("telescope.builtin").help_tags)
		vim.keymap.set("n", "<Leader>fn", function()
			require("telescope.builtin").find_files {
				cwd = vim.fn.stdpath("config")
			}
		end)
	end
}
