return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		parsers = {
			"css",
			"dockerfile",
			"fish",
			"go",
			"java",
			"javascript",
			"nix",
			"nu",
			"powershell",
			"python",
			"rust",
			"scala",
			"svelte",
			"typescript",
			"xml",
			"yaml"
		}
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup({
			ensure_installed = opts.parsers,
			sync_install = true,
			auto_install = false,
			ignore_install = {},
			modules = {},
			highlight = { enable = true, },
		})
	end
}
