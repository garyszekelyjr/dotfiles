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

function dot
    cd ~/dotfiles/
end

function nvim
    if test -e ".nix-profile"
        nix develop --profile .nix-profile --command /run/current-system/sw/bin/nvim
    else
        /run/current-system/sw/bin/nvim $argv
    end
end

if test -e "$HOME/.m2/repository/org/projectlombok/lombok/1.18.36/lombok-1.18.36.jar"
    export JDTLS_JVM_ARGS="-javaagent:$HOME/.m2/repository/org/projectlombok/lombok/1.18.36/lombok-1.18.36.jar"
else

    export JDTLS_JVM_ARGS=""
end

# export LD_LIBRARY_PATH=$NIX_LD_LIBRARY_PATH

venv
