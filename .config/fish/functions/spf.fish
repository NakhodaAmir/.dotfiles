function spf
    if set -q XDG_STATE_HOME
        
        set -gx SPF_LAST_DIR "$XDG_STATE_HOME/superfile/lastdir"
        
    else
    
        set -gx SPF_LAST_DIR "$HOME/.local/state/superfile/lastdir"
        
    end
    
    
    
    command spf $argv
    
    
    
    if test -f "$SPF_LAST_DIR"
        
        source "$SPF_LAST_DIR"
        
        rm -f -- "$SPF_LAST_DIR" > /dev/null
    end
end
