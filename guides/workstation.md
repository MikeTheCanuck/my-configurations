# Config for personal computer where tech stuff happens

1. Enable TouchID to approve `sudo` commands: https://austencam.com/posts/using-touchid-with-sudo-in-terminal-or-iterm
2. Type `cmd + space` and launch `Xcode`. This should install additional required components and will prompt you for the license approval.
4. Reboot the workstation.
5. In Terminal install `xcode-select --install`: this will confirm that xcode developer tools are properly installed.
6. `sudo xcodebuild -license accept`: this will confirm that the xcode eula has been approved.
7. Install [homebrew](http://brew.sh/):
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
6. Run `brew doctor` and make sure it reports `Your system is ready to brew`.
7. Update brew via `brew update`.
8. Install git via `brew install git`.
9. Use my `.gitconfig` file - and don't forget to update the email address - with apologies to [stackoverflow ideas here](https://stackoverflow.com/questions/30024353/how-to-use-visual-studio-code-as-default-editor-for-git#36644561):
10. Enable git autocomplete with this command and the modified dotfiles in this repo:
`curl -O https://raw.github.com/git/git/master/contrib/completion/git-completion.bash`
11. (Optional - for UI dev) Install yarn via `brew install yarn --without-node`.
12. (Optional - for UI dev) Configure yarn to install its global packages via `yarn config set prefix /usr/local/` via [this article](http://www.gavinorland.com/web/installing-global-npm-packages-with-yarn/).
13. (Optional - for UI dev) Install NCU via `yarn global add npm-check-updates`.
14. (Optional - for UI dev) Install watchman to enable `yarn test` (`npm test`) in React apps built with `create-react-app` (via [here](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md#troubleshooting): `brew update && brew install watchman`
15. (Optional - for Travis use) Install current ruby with `brew install ruby`.
16. (Optional - for Travis use)Update system with `sudo gem update --system` (it errors with "You don't have write permissions for the /Library/Ruby/Gems/2.3.0 directory" if you don't use `sudo`).
17. (Optional - for Travis use) Install Travis CLI with `gem install travis -v 1.8.8 --no-rdoc --no-ri` via [this README](https://github.com/travis-ci/travis.rb#installation) and [this SO hint](https://stackoverflow.com/questions/14607193/installing-gem-or-updating-rubygems-fails-with-permissions-error/14607772#comment63133055_14607772).
18. Install Insomnia REST client (replacement for Postman): `brew cask install insomnia`.
19. Open chrome://flags/#autoplay-policy and select "Document user activation is required", to prevent video autoplay.
20. Install **Virtualbox** with `brew cask install virtualbox`.
21. Install Clean Disk from https://macdaddy.io/cleandisk/
22. Wire up `.ssh/config` file with multiple Git Identities https://stackoverflow.com/questions/7927750/specify-an-ssh-key-for-git-push-for-a-given-domain
23. Install **ripgrep** using `brew install rg`.
24. Install an updated `curl` using `brew install curl`, then adding `export PATH... >> ~/.bash_profile` to ensure Terminal can find the recent one.
25. Install **blueutil** (for disable/enable Bluetooth via Terminal) using `brew install blueutil`.
26. Install **hidden** (to hide icons from the macOS menu bar) via https://github.com/dwarvesf/hidden.
27. Install **onyx** https://titanium-software.fr/en/onyx.html to tweak various macOS settings like Screenshots folder
28. Install AlDente to override the macOS ML target of 80% battery charge (e.g. for laptops that have no "pattern" for discharge/recharge, like those that are plugged in 99% of the week) https://github.com/davidwernhart/AlDente
29. Install UTM to run virtual machines https://mac.getutm.app/
30. Install **smartmontools** via homebrew `brew install smartmontools`.
