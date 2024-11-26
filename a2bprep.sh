#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y \
        neovim \
        net-tools \
        python2 \
        python3-pip \
        procps
pip3 install distro
ln -s /usr/bin/python3 /usr/bin/python -sf

#export PERL_MM_USE_DEFAULT=1
#perl -MCPAN -e 'install Devel::Trace'

#perl -d:Trace abuddy.pl -p 8080 --pid 1
echo "perl abuddy.pl -p 8080 --pid 1 -r"
