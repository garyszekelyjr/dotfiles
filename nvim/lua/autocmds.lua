vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end
})

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.number = true

		if vim.fn.expand("<afile>") == "docker-compose.yml" then
			vim.cmd("set filetype=yaml.docker-compose")
		end
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
