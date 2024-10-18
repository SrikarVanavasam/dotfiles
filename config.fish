if status is-interactive
    # Commands to run in interactive sessions can go here
end

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
alias spr4="ssh -Y srikarv2@192.17.100.155"
alias bf3="ssh -Y srikarv2@192.17.100.19"
alias janux2="ssh -Y srikarv2@192.17.100.215"
alias janux6="ssh -Y srikarv2@192.17.100.216"
alias janux8="ssh -Y srikarv2@192.17.100.213"
alias janux10="ssh -Y srikarv2@192.17.100.134"
alias styx="ssh -Y srikarv2@192.17.100.255"
alias epyca0="ssh -Y srikarv2@janux-a0.csl.illinois.edu"
