#!/bin/sh
make clean
make distclean
./configure --prefix=/opt/vim --enable-multibyte\
            --enable-pythoninterp=dynamic --with-python-config-dir=/usr/lib64/python2.7/config \
            --enable-python3interp=dynamic --with-python3-config-dir=/opt/python3/lib/python3.8/config-3.8-x86_64-linux-gnu
#             vi_cv_path_python3=/opt/python3/bin/python3
make
sudo make install
