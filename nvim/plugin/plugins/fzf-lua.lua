vim.pack.add({
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/nvim-tree/nvim-web-devicons"
})

FzfLua = require("fzf-lua")

FzfLua.setup({
	files = {
		fd_opts = "--color=never --type f --hidden --follow --exclude .git --ignore-file " ..
		    vim.fn.stdpath("config") .. "/.fzfignore",
		no_ignore = true
	},
})


vim.keymap.set("n", "<Space>fb", function() FzfLua.buffers() end)
vim.keymap.set("n", "<Space>fc", function() FzfLua.files({ cwd = vim.fn.stdpath("config") }) end)
vim.keymap.set("n", "<Space>ff", function() FzfLua.files() end)
vim.keymap.set("n", "<Space>gc", function()
	FzfLua.git_bcommits({
		winopts = {
			preview = {
				layout = "vertical",
				vertical = "down:70%"
			}
		}
	})
end)
vim.keymap.set("n", "<Space>gs", function() FzfLua.git_status() end)
vim.keymap.set("n", "<Space>fh", function() FzfLua.helptags() end)
vim.keymap.set("n", "<Space>fg", function() FzfLua.live_grep_native() end)
vim.keymap.set("n", "<Space>fx",
	function()
		FzfLua.lsp_document_diagnostics({
			winopts = {
				preview = {
					layout = "vertical",
					vertical = "down:60%"
				}
			}
		})
	end)
vim.keymap.set("n", "<Space>fr", function() FzfLua.registers() end)
