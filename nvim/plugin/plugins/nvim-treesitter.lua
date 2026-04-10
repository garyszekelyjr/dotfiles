vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and kind == "update" then
			if not ev.data.active then vim.cmd.packadd("nvim-treesitter") end
			vim.cmd("TSUpdate")
		end
	end
})

vim.pack.add({ {
	src = "https://github.com/nvim-treesitter/nvim-treesitter",
	version = "main"
} })

require("nvim-treesitter").install({
	"bash",
	"css",
	"dockerfile",
	"fish",
	"go",
	"html",
	"java",
	"javascript",
	"latex",
	"nix",
	"nu",
	"powershell",
	"python",
	"rust",
	"scala",
	"svelte",
	"tsx",
	"typescript",
	"xml",
	"yaml"
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "lua" },
	callback = function()
		vim.treesitter.start()

		vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.wo[0][0].foldmethod = "expr"
		vim.wo[0][0].foldlevel = 99
		vim.wo[0][0].foldcolumn = "0"
		vim.wo[0][0].foldtext = ""


		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,

})
