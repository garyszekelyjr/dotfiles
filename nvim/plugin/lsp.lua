vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/lsps', [[v:val =~ '\.lua$']])) do
	local name   = file:gsub('%.lua$', '')
	local config = require('lsps.' .. name)
	vim.lsp.enable(name)
	vim.lsp.config(name, config)
end
