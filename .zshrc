autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh_history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey "^[[P" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

alias startx='startx; sudo prime-switch'
alias screenrecord='ffmpeg -f x11grab -s 1920x1080 -i $DISPLAY -r 60 -c:v libx264 -crf 0 /mnt/1TB/Videos/Screenrecords/screenrecord-$(date +%F_%H%M%S).mkv'
alias screenrecord-with-audio='ffmpeg -f x11grab -s 1920x1080 -i $DISPLAY -r 60 -f pulse -i default -c:v libx264 /mnt/1TB/Videos/Screenrecords/screenrecord-$(date +%F_%H%M%S).mkv'
