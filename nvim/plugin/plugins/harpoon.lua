vim.pack.add({
	{
		src = "https://github.com/ThePrimeagen/harpoon",
		name = "harpoon",
		version = "harpoon2"
	},
	"https://github.com/nvim-lua/plenary.nvim"
})

Harpoon = require("harpoon")

vim.keymap.set("n", "<Space>ha", function() Harpoon:list():add() end)
vim.keymap.set("n", "<Space>hl", function() Harpoon.ui:toggle_quick_menu(Harpoon:list()) end)
for i = 1, 9 do
	vim.keymap.set("n", "<Space>h" .. i, function() Harpoon:list():select(i) end)
end
