# Continuous template

> A template for continuous testing

## Requirements

[**Docker**](https://docs.docker.com/engine/install/) and [**Packer**](https://developer.hashicorp.com/packer/docs) must be installed on your system

## Plugins required

```bash
packer plugins install github.com/hashicorp/docker
```

```bash
packer plugins install github.com/hashicorp/git
```
## Usage

```bash
git clone https://github.com/taishingi/continuous-template.git continuous
```

```bash
cd continuous 
```

> For rust user 

```bash
cd rust 
```

> Edit providers scripts

```bash
vim stable.sh beta.sh nightly.sh 
```

```bash
packer validate rust.json 
```

```bash
packer hcl2_upgrade -with-annotations  rust.json 
```

```bash
packer build rust.json.pkr.hcl
```


```bash
#!bin/bash

packer validate continuous/rust/rust.json
packer hcl2_upgrade -with-annotations continuous/rust/rust.json
packer build continuous/rust/rust.json.pkr.hcl
```
