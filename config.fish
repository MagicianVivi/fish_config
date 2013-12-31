function fish_title
  pwd
end

set fish_greeting ""

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set PATH $HOME/.cask/bin /usr/local/bin $PATH

setenv JAVA_OPTS "-Xms2048m -Xmx2048m -XX:MaxPermSize=2048m"

setenv _JAVA_OPTS $JAVA_OPTS

setenv _JAVA_OPTIONS $JAVA_OPTS