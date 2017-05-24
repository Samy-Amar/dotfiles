ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look at https://github.com/robbyrussell/oh-my-zsh/wiki/themes for alternatives
ZSH_THEME=agnoster
RPS1='[$(ruby_prompt_info)]$EPS1'  # Add ruby version on prompt (float right)

# Add ruby version on prompt (float right)
if [ -x "$(command -v rbenv)" ]; then RPS1='[$(ruby_prompt_info)]$EPS1'; fi

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}:$HOME/anaconda/bin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Bundle editor
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

# M-cli
export PATH=$PATH:/usr/local/m-cli
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Android stuff
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools