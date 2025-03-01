abbr activate "source .venv/bin/activate.fish"

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
