BATS docker container
=====================

[![GitHub
release](https://img.shields.io/github/release/docwhat/bats-docker.svg)](https://github.com/docwhat/bats-docker/releases)
![ci](https://github.com/docwhat/bats-docker/workflows/ci/badge.svg)
[![Docker Image
Layers](https://images.microbadger.com/badges/image/docwhat/bats-docker.svg)](https://microbadger.com/images/docwhat/bats-docker)


> This image is for running [bats](https://github.com/sstephenson/bats)
tests.

Usage
-----

``` bash
# Assuming your source code is in the current directory
# and the tests are in 'test/'.
$ docker run --tty --rm \
  --volume="${PWD}/:/code/:ro" \
  docwhat/bats:latest /code/test/
```
