# Bash template

> For bash user

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

```bash
cd continuous/sh && ./scripts-gen "domain" "username" "repository" "branch"
```

> .git/hooks/post-commit

```bash
#!/bin/bash

unset GIT_DIR
git push origin --all
git push origin --tags
cd continuous/sh
packer validate .
packer build .
```
