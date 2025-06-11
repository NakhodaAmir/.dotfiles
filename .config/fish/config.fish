if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose "Rosé Pine"
    set -x XDG_SESSION_TYPE x11
    set -x JAVA_TOOL_OPTIONS "-Djdk.xml.totalEntitySizeLimit=0"
end
