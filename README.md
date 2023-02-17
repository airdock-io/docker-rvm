# RVM [![](https://images.microbadger.com/badges/image/airdock/rvm:latest.svg)](https://microbadger.com/images/airdock/rvm:latest "Get your own image badge on microbadger.com")

> This project is no longer actively maintained.
>
> Back in 2017, few open source project provide docker image, etc and our jobs had a real nice goal. Now (2023), all open source community is mature, provides tools and images more than we needs. Thanks to all members for their time and effort.

Docker Image for [RVM](https://rvm.io/) based on airdock/base:jessie


Purpose of this image is:

- install [RVM](https://rvm.io/) with gpg check
- install ruby 2.3(.3 actually)
- use ruby:ruby user in container (ruby user is in rvm group)
- based on airdock/base:jessie

> Name: airdock/rvm

Few link:
- https://blog.codeship.com/build-minimal-docker-container-ruby-apps/
- https://github.com/docker-library/ruby


At this time of writing, you should use docker ruby image from official library.
You cloud retreive usefull image based on alpine.

# Tags

- latest: rvm and ruby 2.3 based on airdock/base:jessie [![](https://images.microbadger.com/badges/image/airdock/rvm:latest.svg)](https://microbadger.com/images/airdock/rvm:latest "Get your own image badge on microbadger.com")


# Usage

You should have already install [Docker](https://www.docker.com/).

Example:

```
    # use initialize login bash
		docker run -ti airdock/rvm /bin/bash -l -c "ruby --version"

		# use rvm
		docker run -ti airdock/rvm rvm ruby-2.3 do ruby --version

		# use ruby:ruby user
		docker run -ti airdock/rvm gosu ruby:ruby rvm ruby-2.3 do ruby --version

		# use ruby:ruby user AND tini for process managment
		docker run -ti airdock/rvm tini -g -- gosu ruby:ruby rvm ruby-2.3 do ruby --version
```


# Change Log


## latest

- install rvm and ruby
- add ruby:ruby user


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
