local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazy_repo = "https://github.com/folke/lazy.nvim.git"

if not (vim.uv or vim.loop).fs_stat(lazy_path) then
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo, lazy_path })
end

vim.opt.rtp:prepend(lazy_path)

require("lazy").setup({ spec = { import = "plugins" } })

require("config")
