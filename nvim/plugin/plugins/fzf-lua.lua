vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and kind == "update" then
			if not ev.data.active then vim.cmd.packadd("nvim-treesitter") end
			vim.cmd("TSUpdate")
		end
	end
})

vim.pack.add({
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/nvim-tree/nvim-web-devicons"
})

require("fzf-lua").setup({
	files = {
		fd_opts = "--color=never --type f --hidden --follow --exclude .git --ignore-file " ..
		    vim.fn.stdpath("config") .. "/.fzfignore",
		no_ignore = true
	}
})

vim.keymap.set("n", "<Space>fb", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Space>fc", ":FzfLua files cwd=" .. vim.fn.stdpath("config") .. "<CR>")
vim.keymap.set("n", "<Space>ff", ":FzfLua files<CR>")
vim.keymap.set("n", "<Space>fg", ":FzfLua live_grep_native<CR>")
vim.keymap.set("n", "<Space>fh", ":FzfLua helptags<CR>")
vim.keymap.set("n", "<Space>fr", ":FzfLua registers<CR>")
vim.keymap.set("n", "<Space>gc", ":FzfLua git_bcommits<CR>")
vim.keymap.set("n", "<Space>gs", ":FzfLua git_status<CR>")
