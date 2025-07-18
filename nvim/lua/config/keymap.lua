-- Base Vim Keymaps
vim.keymap.set("n", "<Leader>\\", ":vsplit<CR>")
vim.keymap.set("n", "<Leader>-", ":split<CR>")

-- Outline Keymaps
vim.keymap.set("n", "<Space>o", ":Outline!<CR>")

-- File Explorer Keymaps
vim.keymap.set("n", "-", ":Oil --float<CR>")

-- Quick List Keymaps
Harpoon = require("harpoon")
vim.keymap.set("n", "<Space>a", function() Harpoon:list():add() end)
vim.keymap.set("n", "<Space>l", function() Harpoon.ui:toggle_quick_menu(Harpoon:list()) end)
vim.keymap.set("n", "<Space>1", function() Harpoon:list():select(1) end)
vim.keymap.set("n", "<Space>2", function() Harpoon:list():select(2) end)
vim.keymap.set("n", "<Space>3", function() Harpoon:list():select(3) end)
vim.keymap.set("n", "<Space>4", function() Harpoon:list():select(4) end)
vim.keymap.set("n", "<Space>5", function() Harpoon:list():select(5) end)
vim.keymap.set("n", "<Space>6", function() Harpoon:list():select(6) end)
vim.keymap.set("n", "<Space>7", function() Harpoon:list():select(7) end)
vim.keymap.set("n", "<Space>8", function() Harpoon:list():select(8) end)
vim.keymap.set("n", "<Space>9", function() Harpoon:list():select(9) end)

-- Buffer Keymaps
vim.keymap.set("n", "<C-w>x", ":bd<CR>")
vim.keymap.set("n", "<C-w>a", ":%bd<CR>")

-- Finder Keymaps
vim.keymap.set("n", "<Space>b", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Space>f", ":FzfLua files<CR>")
vim.keymap.set("n", "<Space>c", ":FzfLua files cwd=" .. vim.fn.stdpath("config") .. "<CR>")
vim.keymap.set("n", "<Space>g", ":FzfLua live_grep_native<CR>")
vim.keymap.set("n", "<Space>h", ":FzfLua helptags<CR>")
vim.keymap.set("n", "<Space>r", ":FzfLua registers<CR>")

-- Git Keymaps
vim.keymap.set("n", "<Space>gc", ":FzfLua git_bcommits<CR>")
vim.keymap.set("n", "<Space>gs", ":FzfLua git_status<CR>")
vim.keymap.set("n", "<Space>gb", ":FzfLua git_blame<CR>")

-- Diagnostics Keymaps
vim.keymap.set("n", "<Space>x", ":Trouble diagnostics toggle<CR>")

-- Markdown Keymaps
vim.keymap.set("n", "<Space>p", ":RenderMarkdown buf_toggle<CR>")
