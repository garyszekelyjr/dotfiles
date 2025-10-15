-- File Explorer Keymaps
vim.keymap.set("n", "<Space>-", ":Oil --float<CR>")

-- Buffer Keymaps
vim.keymap.set("n", "<Space>dx", ":bd<CR>")
vim.keymap.set("n", "<Space>da", ":%bd!<CR>")

-- Finder Keymaps
vim.keymap.set("n", "<Space>fb", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Space>fc", ":FzfLua files cwd=" .. vim.fn.stdpath("config") .. "<CR>")
vim.keymap.set("n", "<Space>ff", ":FzfLua files<CR>")
vim.keymap.set("n", "<Space>fg", ":FzfLua live_grep_native<CR>")
vim.keymap.set("n", "<Space>fh", ":FzfLua helptags<CR>")
vim.keymap.set("n", "<Space>fr", ":FzfLua registers<CR>")

-- Git Keymaps
vim.keymap.set("n", "<Space>gb", ":Gitsigns blame<CR>")
vim.keymap.set("n", "<Space>gc", ":FzfLua git_bcommits<CR>")
vim.keymap.set("n", "<Space>gd", ":GitDiff<CR>")
vim.keymap.set("n", "<Space>gs", ":FzfLua git_status<CR>")

-- Quick List Keymaps
Harpoon = require("harpoon")
vim.keymap.set("n", "<Space>ha", function() Harpoon:list():add() end)
vim.keymap.set("n", "<Space>hl", function() Harpoon.ui:toggle_quick_menu(Harpoon:list()) end)
for i = 1, 9 do
	vim.keymap.set("n", "<Space>h" .. i, function() Harpoon:list():select(i) end)
end

-- Plugin Keymaps
vim.keymap.set("n", "<Space>o", ":topleft Outline!<CR>")
vim.keymap.set("n", "<Space>p", ":RenderMarkdown buf_toggle<CR>")
vim.keymap.set("n", "<Space>x", ":Trouble diagnostics toggle<CR>")

-- Comment Keymaps
if package.config:sub(1, 1) == "\\" then
	vim.keymap.set({ "n", "v" }, "<Space>\\", ":Comment<CR>")
else
	vim.keymap.set({ "n", "v" }, "<Space>/", ":Comment<CR>")
end
