# Go template

> For go user

```bash
git clone https://github.com/taishingi/continuous-template continuous
```

```bash
cd continuous/go && ./scripts-gen
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
cd continuous/go
packer validate .
packer build .
```
