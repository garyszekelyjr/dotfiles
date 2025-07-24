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

function venv --on-variable PWD
    set venv ./.venv
    if test -d $venv
        source "$venv/bin/activate.fish"
    else if type -q deactivate
        deactivate
    end
end

function .
    cd ~/repos/dotfiles/
end

export JDTLS_JVM_ARGS="-javaagent:$HOME/.m2/repository/org/projectlombok/lombok/1.18.36/lombok-1.18.36.jar"

venv
