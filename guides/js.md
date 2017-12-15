JavaScript Engineering Configuration

1. Setup [Node Virtual Machine](https://github.com/creationix/nvm) via `brew install nvm`.
2. Setup [Node.js](https://nodejs.org/en/) via `brew install node`.
3. Configure NVM to eliminate the message upon opening a new shell which reads 'N/A: version "N/A -> N/A" is not yet installed.' (solution via [this nvm issue](https://github.com/creationix/nvm/issues/1651) and [that one](https://github.com/creationix/nvm/issues/1201) - message is spawned by `.nvm/nvm.sh` which is launched from `.profile`):
``` shell
nvm alias default lts/*
```
4. Install eslint with `yarn global add eslint` so that VSCode doesn't complain for eslint-reliant projects.
