# D template

> For d user

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

```bash
cd continuous/d && ./scripts-gen "domain" "username" "repository" "branch"
```

> .git/hooks/post-commit

```bash
#!/bin/bash

unset GIT_DIR
git push origin --all
git push origin --tags
cd continuous/d
packer validate .
packer build .
```

## Docker compose

```yaml
version: '3'
services:
  d:
    environment:
      TERM: xterm-color
    image: taishingi/dlang:latest
    volumes:
      - .:/app
```
