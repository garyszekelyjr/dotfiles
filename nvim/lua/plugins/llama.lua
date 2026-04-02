return {
	"ggml-org/llama.vim",
	init = function()
		vim.g.llama_config = {
			endpoint_fim = "http://10.8.0.1:52479/infill",
			endpoint_inst = "http://10.8.0.1:52479/v1/chat/completions",
		}
	end,
}
