## Mac Automation
To run the automation use either the `make` command- `make bootstrap` or the `sh bootstrap.sh`.

This bootstrapping will require admin priviliges to do some stuff like installing homebrew. It will first download the xcode tools and ansible, and then ansible will install a few apps and then the script will clone my private dotfiles in the $HOME/.config and then stow it to create symlinks in $HOME.

To see the apps installed by ansible look at the [playbook](./dev-playbook.yml)
