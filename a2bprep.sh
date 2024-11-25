#!/usr/bin/env bash
apt update
apt install -y \
  neovim \
  net-tools \
  python2 \
  python3-pip \
  procps
pip3 install distro
ln -s /usr/bin/python3 /usr/bin/python -sf
#perl -MCPAN -e 'install Devel::Trace'
#ps -C 'httpd httpd.worker apache apache2 /usr/sbin/httpd /usr/sbin/httpd.worker' -f | sed -n 2p
#perl -d:Trace abuddy.pl -p 8080 --pid 1
echo "perl abuddy.pl -p 8080 --pid 1 -r"
