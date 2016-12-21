# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    RVM based on airdock/base
# TO_BUILD:       docker build --rm -t airdock/rvm .
# SOURCE:         https://github.com/airdock-io/docker-rvm

FROM airdock/base:latest
MAINTAINER Jerome Guibert <jguibert@gmail.com>

RUN apt-get update -qq && apt-get install -y --no-install-recommends ca-certificates wget && \
  wget -O /usr/local/bin/rvm-installer "https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer" && \
  wget -O /usr/local/bin/rvm-installer.asc "https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer.asc" && \
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
  curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
  gpg --batch --verify /usr/local/bin/rvm-installer.asc /usr/local/bin/rvm-installer && \
  rm -r /usr/local/bin/rvm-installer.asc  && \
  chmod +x /usr/local/bin/rvm-installer  && \
  bash rvm-installer stable --ruby && \
  /root/post-install
