return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<Leader>b",  ":FzfLua buffers<CR>" },
		{ "<Leader>f",  ":FzfLua files<CR>" },
		{ "<Leader>c",  ":FzfLua files cwd=" .. vim.fn.stdpath("config") .. "/..<CR>" },
		{ "<Leader>g",  ":FzfLua live_grep_native<CR>" },
		{ "<Leader>h",  ":FzfLua helptags<CR>" },
		{ "<Leader>r",  ":FzfLua registers<CR>" },
		{ "<Leader>gc", ":FzfLua git_bcommits<CR>" },
		{ "<Leader>gs", ":FzfLua git_status<CR>" }
	},
	opts = {}
}
