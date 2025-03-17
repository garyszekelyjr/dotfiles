vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end
})
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function(args)
		vim.lsp.buf.format({ bufnr = args.buf })
	end
})

vim.filetype.add({
	filename = {
		["docker-compose.yaml"] = "yaml.docker-compose",
		["docker-compose.yml"] = "yaml.docker-compose",
	}
})

vim.keymap.set("n", "<Leader>\\", ":vsplit<CR>")
vim.keymap.set("n", "<Leader>-", ":split<CR>")

vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = "expr"
vim.opt.foldtext = ""
vim.opt.number = true
