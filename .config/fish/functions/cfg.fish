function cfg
    if test (count $argv) -eq 0
        echo "Usage: cfg <config-name>"
        ls ~/.dotfiles/.config
        return 1
    end
    set folder ~/.dotfiles/.config/$argv[1]
    if test -d $folder
        z $folder
        nvim .
    else
        echo "Error: Folder '$folder' does not exist"
        return 1
    end
end
