return {
	'saghen/blink.cmp',
	dependencies = 'rafamadriz/friendly-snippets',
	version = 'v0.*',
	keymap = { preset = 'default' },
	opts = {
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = 'mono'
		},
		signature = { enabled = true }
	}
}
