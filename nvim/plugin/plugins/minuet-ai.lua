vim.pack.add({ "https://github.com/milanglacier/minuet-ai.nvim" })

require("minuet").setup {
	virtualtext = {
		auto_trigger_ft = {},
		keymap = {
			accept = "<A-A>",
			accept_line = "<A-a>",
			accept_n_lines = "<A-z>",
			prev = "<A-[>",
			next = "<A-]>",
			dismiss = "<A-e>",
		},
	},
	provider = "openai_fim_compatible",
	n_completions = 1,
	-- I recommend beginning with a small context window size and incrementally
	-- expanding it, depending on your local computing power. A context window
	-- of 512, serves as an good starting point to estimate your computing
	-- power. Once you have a reliable estimate of your local computing power,
	-- you should adjust the context window to a larger value.
	context_window = 512,
	provider_options = {
		openai_fim_compatible = {
			api_key = "TERM",
			name = "Llama.cpp",
			end_point = "http://localhost:8012/v1/completions",
			-- end_point = "http://10.8.0.1:8012/v1/completions",
			model = "Qwen2.5-Coder",
			optional = {
				max_tokens = 56,
				top_p = 0.9,
			},
			template = {
				prompt = function(context_before_cursor, context_after_cursor, _)
					return "<|fim_prefix|>"
					    .. context_before_cursor
					    .. "<|fim_suffix|>"
					    .. context_after_cursor
					    .. "<|fim_middle|>"
				end,
				suffix = false,
			},
		},
	},
}
