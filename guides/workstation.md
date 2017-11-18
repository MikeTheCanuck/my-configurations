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
9. Install nvm via `brew install nvm`.
10. Install node.js via `brew install node`. // Wait, does it help or hurt to install node alongside nvm ???
11. Install yarn via `brew install yarn`.
12. Configure yarn to install its global packages via `yarn config set prefix /usr/local/` via [this article](http://www.gavinorland.com/web/installing-global-npm-packages-with-yarn/).
13. Install NCU via `yarn global add npm-check-updates`.
14. Setup `.gitconfig` file, with apologies to [stackoverflow ideas here](https://stackoverflow.com/questions/30024353/how-to-use-visual-studio-code-as-default-editor-for-git#36644561):
```
[user]
  name = Mike Lonergan
  email = {insert email address}
[mergetool]
  keepBackup = true
[core]
  editor = code -n --wait
[color]
  ui = auto
[github]
  user = mikethecanuck
[credential]
  helper = osxkeychain
[diff]
    tool = default-difftool
[difftool "default-difftool"]
    cmd = code --wait --diff $LOCAL $REMOTE
```


??? Git autocomplete