vim.filetype.add({
	pattern = {
		["docker%-compose.ya?ml"] = "yaml.docker-compose",
	},
})

vim.g.python3_host_prog = vim.env.HOME .. "/.pyenv/versions/nvim/bin/python"

vim.keymap.set("n", "<Space>gd", ":GitDiff<CR>")

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.splitright = true
vim.opt.splitbelow = true
