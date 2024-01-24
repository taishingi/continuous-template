# C template

> For c user

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

```bash
cd continuous/c && ./scripts-gen "domain" "username" "repository" "branch" "cpu"
```
> .git/hooks/post-commit

```bash
#!/bin/bash

unset GIT_DIR
git push origin --all
git push origin --tags
cd continuous/c 
packer validate .
packer build .
```

## Docker compose

```yaml
version: '3'
services:
  c:
    environment:
      TERM: xterm-color
    image: taishingi/clang:latest
    volumes:
      - .:/app
    command:
      - cmake .
      - make 
      - make install
```