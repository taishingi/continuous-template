# Go template

> For go user

```bash
packer plugins install github.com/hashicorp/googlecompute
```

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

```bash
cd continuous/go && ./scripts-gen "domain" "username" "repository" "branch" "cpu"
```

> .git/hooks/post-commit

```bash
#!/bin/bash

unset GIT_DIR
git push origin --all
git push origin --tags
cd continuous/go
packer validate .
packer build .
```
