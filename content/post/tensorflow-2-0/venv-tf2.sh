#!/usr/bin/env bash
prefix=.env-tf2
rm -r $prefix
virtualenv --python=/usr/bin/python3 --system-site-packages $prefix 
source $prefix/bin/activate
easy_install -U pip
pip install --upgrade setuptools
pip install --upgrade cython
pip install oauth2client httplib2 numpy protobuf pytest sklearn scipy pandas matplotlib cython pyreadr flake8 yapf
pip install tensorflow==2.0.0-beta1
# integrate with jupyter
pip install ipykernel library jupyter

