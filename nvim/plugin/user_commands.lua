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
