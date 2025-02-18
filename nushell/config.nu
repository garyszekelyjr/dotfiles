alias activate = overlay use .venv\Scripts\activate.nu

def sgit [command, ...args] {
	match $command {
		"fc" => {
			git branch | find -n $args.0 | str trim | git checkout ...$in
		}
		"sc" => {
			git add .
			git commit -m $args.0
		}
		_ => {
			git $command ...$args
		}
	}
}

$env.config = {
	buffer_editor: "nvim",
	shell_integration: {
		osc133: false
	},
	show_banner: false
}
