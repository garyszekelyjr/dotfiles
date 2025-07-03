-- Base Vim Keymaps
vim.keymap.set("n", "<Leader>\\", ":vsplit<CR>")
vim.keymap.set("n", "<Leader>-", ":split<CR>")

-- Outline Keymaps
vim.keymap.set("n", "<Space>o", ":Outline!<CR>")

-- File Explorer Keymaps
vim.keymap.set("n", "-", ":Oil --float<CR>")

-- Quick List Keymaps
Harpoon = require("harpoon")
vim.keymap.set("n", "<Space>ha", function() Harpoon:list():add() end)
vim.keymap.set("n", "<Space>hr", function() Harpoon:list():remove() end)
vim.keymap.set("n", "<Space>hc", function() Harpoon:list():clear() end)
vim.keymap.set("n", "<Space>hl", function() Harpoon.ui:toggle_quick_menu(Harpoon:list()) end)
vim.keymap.set("n", "<Space>h1", function() Harpoon:list():select(1) end)
vim.keymap.set("n", "<Space>h2", function() Harpoon:list():select(2) end)
vim.keymap.set("n", "<Space>h3", function() Harpoon:list():select(3) end)
vim.keymap.set("n", "<Space>h4", function() Harpoon:list():select(4) end)
vim.keymap.set("n", "<Space>h5", function() Harpoon:list():select(5) end)
vim.keymap.set("n", "<Space>h6", function() Harpoon:list():select(6) end)
vim.keymap.set("n", "<Space>h7", function() Harpoon:list():select(7) end)
vim.keymap.set("n", "<Space>h8", function() Harpoon:list():select(8) end)
vim.keymap.set("n", "<Space>h9", function() Harpoon:list():select(9) end)

-- Buffer Keymaps
vim.keymap.set("n", "<C-w>a", function() Snacks.bufdelete.all() end)
vim.keymap.set("n", "<C-w>x", function() Snacks.bufdelete.delete() end)
vim.keymap.set("n", "<C-w>o", function() Snacks.bufdelete.other() end)

-- Finder Keymaps
vim.keymap.set("n", "<Space>fb", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Space>ff", ":FzfLua files<CR>")
vim.keymap.set("n", "<Space>fc", ":FzfLua files cwd=" .. vim.fn.stdpath("config") .. "<CR>")
vim.keymap.set("n", "<Space>fg", ":FzfLua live_grep_native<CR>")
vim.keymap.set("n", "<Space>fh", ":FzfLua helptags<CR>")
vim.keymap.set("n", "<Space>fr", ":FzfLua registers<CR>")

-- Git Keymaps
vim.keymap.set("n", "<Space>gc", ":FzfLua git_bcommits<CR>")
vim.keymap.set("n", "<Space>gs", ":FzfLua git_status<CR>")
vim.keymap.set("n", "<Space>gd", ":Gdiffsplit<CR>")

-- Diagnostics Keymaps
vim.keymap.set("n", "<Space>xx", ":Trouble diagnostics toggle<CR>")

-- Markdown Keymaps
vim.keymap.set("n", "<Leader>p", ":RenderMarkdown buf_toggle<CR>")
