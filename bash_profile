shopt -s autocd
shopt -s histappend

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

txtgrn='\e[0;32m' # Green
txtrst='\e[0m'    # Text Reset

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n%s $txtgrn%s\n$txtrst" "$dir" "$(vcprompt)"

}
PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="> "

cd ~/code

# Shortcuts
alias desk="cd ~/Desktop"
alias newdot="sh ~/code/dotfiles/update_dotfiles.sh"
alias update="brew update && brew upgrade"

# Git Shortcuts
alias gita="git add -A"
alias gitc="git commit -m"
alias gits="git status"
alias commit="git add -A; git commit -m"

eval "$(/opt/homebrew/bin/brew shellenv)"
export NVM_DIR="$HOME/.nvm"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
