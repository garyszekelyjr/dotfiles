local lazy = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazy) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		"https://github.com/folke/lazy.nvim.git",
		lazy
	})
end

vim.opt.rtp:prepend(lazy)

require("lazy").setup({ spec = { import = "plugins" } })

require("config")
