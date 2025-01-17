return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		parsers = {
			"dockerfile",
			"fish",
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
			sync_install = true,
			auto_install = false,
			ignore_install = {},
			modules = {},
			highlight = { enable = true, },
		})
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		vim.opt.foldtext = ""
		vim.opt.foldlevelstart = 99
	end
}
