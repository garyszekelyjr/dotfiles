return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		parsers = {
			"dockerfile",
			"go",
			"java",
			"javascript",
			"powershell",
			"python",
			"rust",
			"svelte",
			"typescript",
			"xml",
			"yaml"
		}
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup({
			ensure_installed = opts.parsers,
			highlight = { enable = true },
		})
	end
}
