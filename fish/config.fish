if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Added by `rbenv init` on Tue Jan 28 16:32:45 EST 2025
status --is-interactive; and rbenv init - --no-rehash fish | source

alias activate "source .venv/bin/activate.fish"

function sgit
	switch $argv[1]
		case fc
			git branch | grep $argv[2] | xargs git checkout
		case sc
			git add .
			git commit -m $argv[2]
		case '*'
			git $argv
	end
end
