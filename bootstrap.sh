#!/bin/sh
# install xcode tools
xcode-select --install
sudo xcodebuild -license

# sudo systemsetup -setremotelogin on

brew install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook -i "localhost," -c local dev-playbook.yml --ask-become-pass
