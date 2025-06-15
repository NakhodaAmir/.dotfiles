if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose "Rosé Pine"
    set -x XDG_SESSION_TYPE x11
    set -x JAVA_TOOL_OPTIONS "-Djdk.xml.totalEntitySizeLimit=0"
end

#zoxide
zoxide init fish | source

#fzf
fzf --fish | source
set -Ux FZF_DEFAULT_OPTS "
	--color=fg:#908caa,bg:#191724,hl:#ebbcba
	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
	--color=border:#403d52,header:#31748f,gutter:#191724
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"
