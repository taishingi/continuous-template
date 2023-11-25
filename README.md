# Continuous template

> A template for continuous testing

## Requirements

[**docker**](https://docs.docker.com/engine/install/) and [**packer**](https://developer.hashicorp.com/packer/docs) must be installed on your system

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

