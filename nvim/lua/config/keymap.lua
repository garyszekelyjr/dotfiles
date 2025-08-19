-- Base Vim Keymaps
vim.keymap.set("n", "<Space>\\", ":vsplit<CR>")
vim.keymap.set("n", "<Space>-", ":split<CR>")

-- Comment Keymaps
if package.config:sub(1, 1) == "\\" then
	vim.keymap.set({ "n", "v" }, "<C-\\>", ":Comment<CR>")
else
	vim.keymap.set({ "n", "v" }, "<C-/>", ":Comment<CR>")
end

-- File Explorer Keymaps
vim.keymap.set("n", "-", ":Oil --float<CR>")

-- Finder Keymaps
vim.keymap.set("n", "<Space>b", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Space>c", ":FzfLua files cwd=" .. vim.fn.stdpath("config") .. "<CR>")
vim.keymap.set("n", "<Space>f", ":FzfLua files<CR>")
vim.keymap.set("n", "<Space>g", ":FzfLua live_grep_native<CR>")
vim.keymap.set("n", "<Space>h", ":FzfLua helptags<CR>")
vim.keymap.set("n", "<Space>r", ":FzfLua registers<CR>")

-- Quick List Keymaps
Harpoon = require("harpoon")
vim.keymap.set("n", "<Space>a", function() Harpoon:list():add() end)
vim.keymap.set("n", "<Space>l", function() Harpoon.ui:toggle_quick_menu(Harpoon:list()) end)
for i = 1, 9 do
	vim.keymap.set("n", "<Space>" .. i, function() Harpoon:list():select(i) end)
end

-- Git Keymaps
vim.keymap.set("n", "<C-g>b", ":Gitsigns blame<CR>")
vim.keymap.set("n", "<C-g>c", ":FzfLua git_bcommits<CR>")
vim.keymap.set("n", "<C-g>d", ":GitDiff<CR>")
vim.keymap.set("n", "<C-g>s", ":FzfLua git_status<CR>")

-- Buffer Keymaps
vim.keymap.set("n", "<C-w>x", ":bd<CR>")
vim.keymap.set("n", "<C-w>a", ":%bd<CR>")

-- Plugin Keymaps
vim.keymap.set("n", "<Space>o", ":Outline!<CR>")
vim.keymap.set("n", "<Space>p", ":RenderMarkdown buf_toggle<CR>")
vim.keymap.set("n", "<Space>x", ":Trouble diagnostics toggle<CR>")
