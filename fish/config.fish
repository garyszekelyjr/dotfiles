function sgit
    switch $argv[1]
        case fc
            git branch | grep $argv[2] | xargs git checkout
        case sc
            git add .
            git commit -m $argv[2]
        case "*"
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
    cd $HOME/dotfiles
end

function fish_prompt
    printf "%s%s%s%s> " (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (fish_git_prompt)
end

if test -e $HOME/.m2/repository/org/projectlombok/lombok/1.18.42/
    set JDTLS_JVM_ARGS -javaagent:$HOME/.m2/repository/org/projectlombok/lombok/1.18.42/lombok-1.18.42.jar
else

    set JDTLS_JVM_ARGS ""
end

set -g fish_prompt_pwd_dir_length 0

venv

export EDITOR=nvim
