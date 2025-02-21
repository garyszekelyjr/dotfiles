vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end
})

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		if string.match(vim.fn.expand("<afile>"), "[.]") then
			vim.opt.number = true
		end

		if vim.fn.expand("<afile>") == "docker-compose.yml" then
			vim.cmd("set filetype=yaml.docker-compose")
		end
	end
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function(args)
		vim.lsp.buf.format({ bufnr = args.buf })
	end
})
