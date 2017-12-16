# JavaScript Engineering Configuration

1. Setup [Node Virtual Machine](https://github.com/creationix/nvm) via `curl` command - see the Github README for current version:
`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash`
2. Setup [Node.js](https://nodejs.org/en/) via `brew install node`.
3. Configure NVM to eliminate the message upon opening a new shell which reads 'N/A: version "N/A -> N/A" is not yet installed.' (solution via [this nvm issue](https://github.com/creationix/nvm/issues/1651) and [that one](https://github.com/creationix/nvm/issues/1201) - message is spawned by `.nvm/nvm.sh` which is launched from `.profile`):
``` shell
nvm alias default lts/*
```
4. Configure XXX to eliminate the following message when opening a new shell:
```
nvm is not compatible with the npm config "prefix" option: currently set to "/usr/local"
Run `npm config delete prefix` or `nvm use --delete-prefix v8.9.1 --silent` to unset it.
```
Issue doc'd [here](https://github.com/creationix/nvm/issues/1647) and [here](https://github.com/creationix/nvm/issues/1652).
Solution is this:
``` shell

```
5. Install eslint with `yarn global add eslint` so that VSCode doesn't complain for eslint-reliant projects.
