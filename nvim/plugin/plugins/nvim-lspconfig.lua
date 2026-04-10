vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

local lsps = {
	basedpyright = {},
	bashls = {},
	cssls = {},
	docker_language_server = {},
	fish_lsp = {},
	gdscript = {},
	gopls = {},
	html = {},
	hyprls = {},
	jdtls = {},
	jsonls = {},
	lemminx = {},
	-- ltex = {},
	lua_ls = {
		on_init = function(client)
			if client.workspace_folders then
				local path = client.workspace_folders[1].name
				if
				    path ~= vim.fn.stdpath("config")
				    and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
				then
					return
				end
			end

			client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
				runtime = {
					version = "LuaJIT",
					path = {
						"lua/?.lua",
						"lua/?/init.lua",
					},
				},
				workspace = {
					checkThirdParty = false,
					library = {
						vim.env.VIMRUNTIME,
					},
				},
			})
		end,
		settings = {
			Lua = {
				format = {
					enable = true,
					defaultConfig = {
						quote_style = "double",
					}
				},
			},
		},
	},
	marksman = {},
	metals = {},
	powershell_es = {
		bundle_path = "C:/Program Files/PowerShellEditorServices"
	},
	-- pyright = {},
	ruff = {},
	rust_analyzer = {},
	svelte = {},
	tailwindcss = {},
	taplo = {},
	ts_ls = {},
	zls = {}
}

for lsp, config in pairs(lsps) do
	vim.lsp.enable(lsp)
	vim.lsp.config(lsp, config)
end
