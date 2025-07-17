require("config.autocmd")
require("config.colorscheme")
require("config.keymap")
require("config.opt")

vim.filetype.add({
	filename = {
		["docker-compose.yaml"] = "yaml.docker-compose",
		["docker-compose.yml"] = "yaml.docker-compose",
	}
})
