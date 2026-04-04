vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/lsp', [[v:val =~ '\.lua$']])) do
	local name   = file:gsub('%.lua$', '')
	local config = require('lsp.' .. name)

	if name == "lua_ls" then
		config.settings.Lua = vim.tbl_deep_extend('force', config.settings.Lua, {
			format = {
				enable = true,
				defaultConfig = {
					quote_style = "Double",
				}
			},
			runtime = {
				version = 'LuaJIT',
				path = {
					'lua/?.lua',
					'lua/?/init.lua',
				},
			},
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		})
	end

	vim.lsp.enable(name)
	vim.lsp.config(name, config)
end
