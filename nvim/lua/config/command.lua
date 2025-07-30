vim.api.nvim_create_user_command("Comment", function(opts)
	local comments = {
		lua = "--",
		python = "#"
	}

	local comment = comments[vim.bo.filetype] or "//"

	local line = vim.fn.getline(opts.line1):gsub("%s+", "")
	local num_spaces = vim.fn.indent(opts.line1) / 8

	if line:sub(1, #comment) == comment then
		vim.cmd(opts.line1 .. "," .. opts.line2 .. "s:^\\(\\s\\{-\\}\\)" .. comment .. " :\\1:")
		vim.cmd("noh")
	else
		vim.cmd(opts.line1 ..
			"," ..
			opts.line2 ..
			"s:^\\(\\s\\{" .. num_spaces .. "\\}\\):\\1" .. comment .. " :")
		vim.cmd("noh")
	end
end, { range = true })

vim.api.nvim_create_user_command("GitDiff", function()
	local open = false

	for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
		local bufname = vim.api.nvim_buf_get_name(bufnr)
		if bufname:sub(1, #"gitsigns:") == "gitsigns:" then
			open = true
			vim.cmd("bd " .. bufnr)
		end
	end

	if not open then
		vim.cmd("Gitsigns diffthis")
	end
end, {})
