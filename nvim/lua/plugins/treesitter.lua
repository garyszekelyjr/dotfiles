return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		vim.api.nvim_create_autocmd("VimEnter", {
			command = "TSEnable highlight",
		})
	end
}
