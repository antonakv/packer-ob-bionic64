# packer_bionic64

## pre-requirements

- packer
- vagrant

## how to use this repo
- clone this repo
- build box
- test box
- publish box
- consume box 

## clone
```
git clone https://github.com/kikitux/packer_bionic64
cd packer_bionic64
```

## build

```
packer build template.json
```

## add the box locally

```
vagrant box add --force --name bionic64  bionic64-vbox.box
```

## test

### pre-req

- rbenv
- ruby >=2.6

```
rbenv install -l
rbenv install 2.6.6
rbenv local 2.6.6
```

### kitchen-test

You can install locally

```
bundle install --path vendor/bundle
```

or

You can install global

```
bundle install
```

### test

```
bundle exec kitchen list
bundle exec kitchen converge
bundle exec kitchen verify
bundle exec kitchen destroy
```

all in one 

```
bundle exec kitchen test
```

## publish box

```shell
vagrant cloud auth login
vagrant cloud box create <user>/<box>
vagrant cloud publish --box-version `date +%y.%m.%d` \
  --force --no-private --release <user>/<box>   \
  `date +%y.%m.%d` virtualbox bionic64-vbox.box
```

## consul box

```
mkdir test
cd test
vagrant init -m <user>/<box>
vagrant up
```
