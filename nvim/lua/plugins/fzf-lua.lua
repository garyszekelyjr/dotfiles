return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		files = {
			fd_opts = [[--color=never --type f --hidden --follow --exclude .git --ignore-file ]] ..
			    vim.fn.stdpath("config") .. "/.fzfignore",
			no_ignore = true
		}
	}
}
