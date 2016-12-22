# RVM [![](https://images.microbadger.com/badges/image/airdock/rvm:latest.svg)](https://microbadger.com/images/airdock/rvm:latest "Get your own image badge on microbadger.com")

Docker Image for [RVM](https://rvm.io/) based on airdock/base:jessie


Purpose of this image is:

- install [RVM](https://rvm.io/)
- install ruby 2.3
- based on airdock/base:jessie


> Name: airdock/rvm


# Usage

You should have already install [Docker](https://www.docker.com/).

Execute:

		docker run -ti airdock/rvm /bin/bash-l -c "ruby --version"

# Change Log

## 2012/12/21

- install rvm and ruby
- MIT license

# Build


- Install "make" utility, and execute: `make build`
- Or execute: 'docker build -t airdock/rvm:latest --rm .'

See [Docker Project Tree](https://github.com/airdock-io/docker-base/wiki/Docker-Project-Tree) for more details.


# MIT License

```
The MIT License (MIT)

Copyright (c) 2015 Airdock.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
