vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/milanglacier/minuet-ai.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
})

require("lualine").setup {
	options = {
		component_separators = "|",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_x = {
			{ require("minuet.lualine") },
			"filetype",
			"encoding",
			"fileformat",
		},
	},
	extensions = {
		"aerial",
		"symbols-outline"
	}
}
