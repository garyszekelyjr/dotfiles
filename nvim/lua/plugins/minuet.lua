return {
	"milanglacier/minuet-ai.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		require("minuet").setup {
			virtualtext = {
				auto_trigger_ft = { "lua", "python" },
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
			context_window = 512,
			provider_options = {
				openai_fim_compatible = {
					api_key = function() return "NO_KEY_NEEDED" end,
					name = "Ollama",
					-- end_point = "http://10.8.0.1:11434/v1/completions",
					end_point = "http://localhost:11434/v1/completions",
					model = "qwen2.5-coder:0.5b",
					optional = {
						max_tokens = 56,
						top_p = 0.9,
					},
				},
				gemini = {
					model = "gemini-2.0-flash",
					api_key = function() return "AIzaSyAogxLQKYr03Vs9M1Ex1VY8bzfbs_t228s" end,
					optional = {
						generationConfig = {
							maxOutputTokens = 256,
							thinkingConfig = {
								thinkingBudget = 0,
								thinkingLevel = "minimal",
							},
						},
						safetySettings = { {
							category = "HARM_CATEGORY_DANGEROUS_CONTENT",
							threshold = "BLOCK_ONLY_HIGH",
						} },
					},
				},
			},
		}
	end,
}
