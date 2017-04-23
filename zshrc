export LANG=ja_JP.UTF-8
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$PATH:`yarn global bin`"

# ostype

if [[ $OSTYPE == darwin* ]] then
  export PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH
  export PATH=$HOME/homebrew/bin:$PATH
  alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
fi

# term
export TERM=xterm-256color

# alias
alias g=git
alias gr='find . -type f | xargs grep -e $1'
alias gd='dirs -v; echo -n "select number: "; read newdir; cd -"$newdir"'

# ssh-agent
[[ -e "$HOME/.ssh/id_rsa" ]] && ssh-add "$HOME/.ssh/id_rsa"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# keybind
bindkey -e

# editor
export EDITOR=emacs

# dir
setopt autopushd

# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history
setopt share_history

# prompt
autoload -U colors
colors
PROMPT="%{${fg[green]}%}[%n@%m] %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"

# git prompt
autoload -U colors; colors

function rprompt-git-current-branch {
        local name st color

        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
                return
        fi
        name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
        if [[ -z $name ]]; then
                return
        fi
        st=`git status 2> /dev/null`
        if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
                color=${fg[green]}
        elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
                color=${fg[yellow]}
        elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
                color=${fg_bold[red]}
        else
                color=${fg[red]}
        fi
        echo "%{$color%}$name%{$reset_color%} "
}

setopt prompt_subst

RPROMPT='[`rprompt-git-current-branch`%~]'

# completion
autoload -U compinit; compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors di=34 fi=0
zstyle ':completion:*:default' menu select=1

# based by http://devel.aquahill.net/zsh/zshoptions
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

setopt append_history
setopt auto_cd
setopt auto_list
setopt auto_menu
setopt auto_param_keys
setopt auto_param_slash
setopt auto_resume
setopt NO_beep
setopt brace_ccl
setopt correct
setopt equals
setopt extended_glob
setopt NO_flow_control
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt NO_hup
setopt ignore_eof
setopt interactive_comments
setopt list_types
setopt long_list_jobs
setopt magic_equal_subst
setopt mark_dirs
setopt multios
setopt numeric_glob_sort
setopt print_eightbit
setopt short_loops
setopt prompt_subst
setopt share_history
setopt hist_no_store
unsetopt promptcr
setopt transient_rprompt
setopt autopushd
