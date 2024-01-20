# Rust template

> For rust user

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

```bash
cd continuous/rust && ./scripts-gen "domain" "username" "repository" "branch" "cpu"
```

> .git/hooks/post-commit

```bash
#!/bin/bash

unset GIT_DIR
git push origin --all
git push origin --tags
cd continuous/rust
packer validate .
packer build .
```
