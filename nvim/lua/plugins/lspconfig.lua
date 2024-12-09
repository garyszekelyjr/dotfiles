local cmp_nvim_lsp = require 'cmp_nvim_lsp'
local lspconfig = require 'lspconfig'


lspconfig.gopls.setup {
	cmd = {
		root = "~/go/bin",
		"gopls"
	},
	capabilities = cmp_nvim_lsp.default_capabilities(),
	on_attach = on_attach
}

lspconfig.lua_ls.setup {
	on_init = function(client)
      		if client.workspace_folders then
        		local path = client.workspace_folders[1].name
        		if vim.uv.fs_stat(path..'/.luarc.json') or vim.uv.fs_stat(path..'/.luarc.jsonc') then
          			return
        		end
      		end
      		client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
        		runtime = {
          			-- Tell the language server which version of Lua you're using
          			-- (most likely LuaJIT in the case of Neovim)
          			version = 'LuaJIT'
        		},
        		-- Make the server aware of Neovim runtime files
        		workspace = {
          			checkThirdParty = false,
          			library = {
            				vim.env.VIMRUNTIME
          			}
        		}
      		})
    	end,
	capabilities = cmp_nvim_lsp.default_capabilities(),
	settings = {
		Lua = { }
	}
}

lspconfig.pyright.setup{
	capabilities = cmp_nvim_lsp.default_capabilities()
}

lspconfig.svelte.setup {
	capabilities = cmp_nvim_lsp.default_capabilities()
}

lspconfig.ts_ls.setup {
	capabilities = cmp_nvim_lsp.default_capabilities()
}

lspconfig.vimls.setup {
	capabilities = cmp_nvim_lsp.default_capabilities()
}


vim.diagnostic.config({
  update_in_insert = true
})

