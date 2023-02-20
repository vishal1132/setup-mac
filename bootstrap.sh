#!/bin/sh
# install xcode tools
xcode-select --install
sudo xcodebuild -license

# sudo systemsetup -setremotelogin on

brew install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook -i "localhost," -c local dev-playbook.yml --ask-become-pass

# once all the apps are installed now need to clone the dotfiles repo to $HOME/.config
git clone git@github.com:vishal1132/dotfiles.git $HOME/.config
cd $HOME/.config && stow .