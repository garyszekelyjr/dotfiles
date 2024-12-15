local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazyrepo = "https://github.com/folke/lazy.nvim.git"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		import = "plugins"
	}
})


vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.number = true
		vim.opt.wrap = false
	end
})

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end
})

vim.api.nvim_create_autocmd("TermEnter", {
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end
})

vim.api.nvim_create_autocmd("TermLeave", {
	callback = function()
		vim.opt.number = true
	end
})
