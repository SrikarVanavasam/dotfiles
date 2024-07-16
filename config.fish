if status is-interactive
    # Commands to run in interactive sessions can go here
end

# TokyoNight Color Palette
set -l foreground c8d3f5
set -l selection 2d3f76
set -l comment 636da6
set -l red ff757f
set -l orange ff966c
set -l yellow ffc777
set -l green c3e88d
set -l purple fca7ea
set -l cyan 86e1fc
set -l pink c099ff

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
set -g pure_color_mute green

# vi bindings
fish_vi_key_bindings
bind --mode insert --sets-mode default jk repaint
bind --mode insert --sets-mode default jj repaint
bind -M insert \ce accept-autosuggestion

# environment variables
fish_add_path ~/.local/bin

# aliases
alias spr1="ssh -Y srikarv2@192.17.103.4"
alias spr2="ssh -Y srikarv2@192.17.103.211"
alias spr3="ssh -Y srikarv2@192.17.100.21"
alias bf3="ssh -Y srikarv2@192.17.100.19"
alias janux10="ssh -Y srikarv2@192.17.100.134"
alias epyca0="ssh -Y srikarv2@janux-a0.csl.illinois.edu"
