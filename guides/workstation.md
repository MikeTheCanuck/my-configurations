# Config for personal computer where tech stuff happens

1. Type `cmd + space` and launch `Xcode`. This should install additional required components and will prompt you for the license approval.
2. Reboot the workstation.
3. In Terminal install `xcode-select --install`: this will confirm that xcode developer tools are properly installed.
4. `sudo xcodebuild -license accept`: this will confirm that the xcode eula has been approved.
5. Install [homebrew](http://brew.sh/):
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
6. Run `brew doctor` and make sure it reports `Your system is ready to brew`.
7. Update brew via `brew update`.
8. Install git via `brew install git`.
9. Use my `.gitconfig` file - and don't forget to update the email address - with apologies to [stackoverflow ideas here](https://stackoverflow.com/questions/30024353/how-to-use-visual-studio-code-as-default-editor-for-git#36644561):
10. Enable git autocomplete with this command and the modified dotfiles in this repo:
`curl -O https://raw.github.com/git/git/master/contrib/completion/git-completion.bash`
11. Install yarn via `brew install yarn --without-node`.
12. Configure yarn to install its global packages via `yarn config set prefix /usr/local/` via [this article](http://www.gavinorland.com/web/installing-global-npm-packages-with-yarn/).
13. Install NCU via `yarn global add npm-check-updates`.
14. Install watchman to enable `yarn test` (`npm test`) in React apps built with `create-react-app` (via [here](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md#troubleshooting): `brew update && brew install watchman`
15. Install current ruby with `brew install ruby`.
16. Update system with `sudo gem update --system` (it errors with "You don't have write permissions for the /Library/Ruby/Gems/2.3.0 directory" if you don't use `sudo`).
17. Install Travis CLI with `gem install travis -v 1.8.8 --no-rdoc --no-ri` via [this README](https://github.com/travis-ci/travis.rb#installation) and [this SO hint](https://stackoverflow.com/questions/14607193/installing-gem-or-updating-rubygems-fails-with-permissions-error/14607772#comment63133055_14607772).
