function a
    archey
end

function brew-update
    brew update; brew upgrade; brew cleanup;
end

function fish-source
    source ~/.config/fish/config.fish
end

function vi
    vim $argv
end

function tmux-update
    bash ~/.tmux/update
end

function tmux-config
    vim ~/.tmux.conf
end

function vim-config
    vim ~/.vimrc
end

function vim-update
    bash ~/.vim/update
end

function weather
    curl wttr.in
end

if test (date +%H) -gt 8 -a (date +%H) -lt 17
    set -g SOLARIZED_THEME light
else
    set -g SOLARIZED_THEME dark
end
