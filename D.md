# D template

> For d user

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

```bash
cd continuous/d && ./scripts-gen "github.com|gitlab.com" "username" "repository"
```

> Edit providers scripts

```bash
vim stable
```

```bash
vim beta
```

```bash
vim nightly
```

```bash
packer validate . 
```

```bash
packer build .
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
