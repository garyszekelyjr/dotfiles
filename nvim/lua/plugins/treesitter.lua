return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		vim.api.nvim_create_autocmd("VimEnter", {
			command = "TSEnable highlight",
		})
	end
}
