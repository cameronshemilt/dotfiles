#!/bin/bash

# Links
BREWFILE = "https://raw.githubusercontent.com/cameronshemilt/dotfiles/main/Brewfile"
BASH_PROFILE = "https://raw.githubusercontent.com/cameronshemilt/dotfiles/main/bash_profile"
SSH_CONFIG = "https://raw.githubusercontent.com/cameronshemilt/dotfiles/main/config"
MAC_DEFAULTS = "https://raw.githubusercontent.com/cameronshemilt/dotfiles/main/mac_defaults.sh"
FURTHER_STEPS = "https://github.com/cameronshemilt/dotfiles#further-steps"


echo "Starting Mac Setup"

# Commandline Tools
echo "Installing XCode commandline tools..."
xcode-select --install

# Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Download Brewfile"
cd ~
curl -LsS -o brewfile.txt $BREWFILE
echo "Executing Brewfile"
brew bundle install

# Bash Profile
echo "Downloading Bash Profile"
cd ~
touch .bash_profile
curl -LsS $BASH_PROFILE >> .bash_profile

# SSH
echo "Downloading SSH Config"
cd ~
mkdir .ssh
cd .ssh
touch config
curl -LsS $BASH_PROFILE >> config
cd ~

# Mac Defaults
echo "Setting Mac Defaults"
source <(curl -LsS $MAC_DEFAULTS)

# Node
# brew install nvm # Uncomment if not included in your bashfile
echo "Setting up Node"
nvm install --lts
nvm install-latest-npm
npm i -g ntl firebase-tools heroku vercel eslint live-server http-server nodemon

# Updating Bash
echo "Updating Bash Version"
echo "/usr/local/bin/bash" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

# Oter Stuff
cd
touch .hushlogin


open $FURTHER_STEPS
