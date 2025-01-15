vim.api.nvim_create_user_command("Terminal", function()
	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.8)
	local cols = math.floor((vim.o.columns - width) / 2)
	local rows = math.floor((vim.o.lines - height) / 2)

	vim.api.nvim_open_win(0, true, {
		relative = "editor",
		width = width,
		height = height,
		row = rows,
		col = cols,
		style = "minimal",
		border = "rounded"
	})

	vim.cmd("terminal")
end, {})
