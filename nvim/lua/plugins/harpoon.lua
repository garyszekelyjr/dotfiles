return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<C-a>", function() require("harpoon"):list():add() end },
		{ "<C-d>", function() require("harpoon"):list():remove() end },
		{ "<C-c>", function() require("harpoon"):list():clear() end },
		{ "<C-l>", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end },
		{ "<C-1>", function() require("harpoon"):list():select(1) end },
		{ "<C-2>", function() require("harpoon"):list():select(2) end },
		{ "<C-3>", function() require("harpoon"):list():select(3) end },
		{ "<C-4>", function() require("harpoon"):list():select(4) end },
		{ "<C-5>", function() require("harpoon"):list():select(5) end },
		{ "<C-6>", function() require("harpoon"):list():select(6) end },
		{ "<C-7>", function() require("harpoon"):list():select(7) end },
		{ "<C-8>", function() require("harpoon"):list():select(8) end },
		{ "<C-9>", function() require("harpoon"):list():select(9) end }
	},
	opts = {}
}
