# How I maintain my system

Here's how I maintain/update software installed in various places by various tools:

## App Store-installed software

## Brew-installed software

## NPM-installed software

* Check if any outdated software in the current repo: `ncu`
* Check if any outdated software in the system: `ncu --global`
* Upgrade one outdated system package e.g. firebase-tools: `npm install --global firebase-tools`
* Upgrade one outdated repo package:
* Update the repo's `package-lock.json`:

## Yarn-installed software

* Check if any outdated software in the current repo:
* Check if any outdated software in the system:
* Upgrade one outdated system package
* Upgrade one outdated repo package e.g. `react`: `yarn upgrade react`
* Upgrade one outdate repo package to its latest version: `yarn upgrade --latest react`
* *  Note: Yarn may complain with e.g. `warning " > react-dom@15.6.2" has incorrect peer dependency "react@^15.6.2".` which means the "peer dependency" package you just updated requires the other package to be updated as well e.g. you should run `yarn upgrade --latest react-dom` as well
* Upgrade all dependencies of an upgraded package: `yarn upgrade`
* Upgrade all dependencies to their latest version: `yarn upgrade latest`
* Update the repo's `yarn.lock`: (nothing to do - `yarn upgrade` auto-updates `yarn.lock`)