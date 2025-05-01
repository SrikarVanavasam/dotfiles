if status is-interactive
    # Commands to run in interactive sessions can go here
end

# vi bindings
fish_hybrid_key_bindings
bind --mode insert --sets-mode default jk repaint
bind --mode insert --sets-mode default jj repaint
bind -M insert \ce accept-autosuggestion

# environment variables
fish_add_path ~/.local/bin
