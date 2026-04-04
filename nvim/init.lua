vim.filetype.add({
	pattern = {
		["docker%-compose.ya?ml"] = "yaml.docker-compose",
	},
})

vim.g.python3_host_prog = vim.env.HOME .. "/.pyenv/versions/nvim/bin/python"

vim.keymap.set("n", "<Space>dx", ":bd<CR>")
vim.keymap.set("n", "<Space>da", ":%bd!<CR>")
vim.keymap.set("n", "<Space>gd", ":GitDiff<CR>")

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.splitright = true
vim.opt.splitbelow = true
