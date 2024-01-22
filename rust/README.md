# Rust template

[Docker image](https://hub.docker.com/r/taishingi/rlang)

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

## Generate script

```bash
cd continuous/rust && ./scripts-gen "domain" "username" "repository" "branch" "cpu"
```

## Hook file code

```bash
#!/bin/bash

unset GIT_DIR
git push origin --all
git push origin --tags
cd continuous/rust
packer validate .
packer build .
```
