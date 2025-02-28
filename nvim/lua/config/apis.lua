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
