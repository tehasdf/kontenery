#!/bin/bash

set -e
yum install wget telnet vim tmux wget go git -y

wget https://github.com/coreos/rkt/releases/download/v1.18.0/rkt-v1.18.0.tar.gz -O /opt/rkt.tar.gz
cd /opt && tar xzvf rkt.tar.gz
ln -s /opt/rkt-v1.18.0/rkt /usr/bin/rkt
wget https://github.com/containers/build/releases/download/v0.4.0/acbuild-v0.4.0.tar.gz -O /opt/acbuild.tar.gz
cd /opt && tar xvzf acbuild.tar.gz

ln -s /opt/acbuild-v0.4.0/acbuild /usr/bin/acbuild

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install virtualenv
