#!/bin/bash

# Links
BREWFILE = "https://gist.githubusercontent.com/cameronshemilt/fd5a8cc4ba8f0b4f1b8347a0acc02fc4/raw/Brewfile"
BASH_PROFILE = "https://gist.githubusercontent.com/cameronshemilt/fd5a8cc4ba8f0b4f1b8347a0acc02fc4/raw/.bash_profile"
SSH_CONFIG = "https://gist.githubusercontent.com/cameronshemilt/fd5a8cc4ba8f0b4f1b8347a0acc02fc4/raw/config"
MAC_DEFAULTS = "https://gist.githubusercontent.com/cameronshemilt/fd5a8cc4ba8f0b4f1b8347a0acc02fc4/raw/mac_defaults.sh"
FURTHER_STEPS = "https://gist.github.com/cameronshemilt/fd5a8cc4ba8f0b4f1b8347a0acc02fc4#further-steps"


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
