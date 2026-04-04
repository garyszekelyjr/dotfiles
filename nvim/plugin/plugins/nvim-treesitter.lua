vim.pack.add({ {
	src = "https://github.com/nvim-treesitter/nvim-treesitter",
	version = "master"
} })

-- build = ":TSUpdate",

local parsers = {
	"bash",
	"css",
	"dockerfile",
	"fish",
	"go",
	"html",
	"java",
	"javascript",
	"latex",
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

require("nvim-treesitter.configs").setup({
	ensure_installed = parsers,
	sync_install = true,
	auto_install = false,
	ignore_install = {},
	modules = {},
	highlight = {
		enable = true
	},
})
