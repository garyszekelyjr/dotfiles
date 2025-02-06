alias activate = overlay use .venv\Scripts\activate.nu

$env.config = {
	buffer_editor: "nvim",
	shell_integration: {
		osc133: false
	},
	show_banner: false
}
