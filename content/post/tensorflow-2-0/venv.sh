#!/usr/bin/env bash

# choose between tensorflow==1.14.0 and tensorflow==2.0.0-beta1 in 2 different envs

prefix=.env1
rm -r $prefix
virtualenv --python=/usr/bin/python3 --system-site-packages $prefix
source $prefix/bin/activate
# easy_install -U pip # pip is included in python3
pip install --ignore-installed --no-cache-dir --upgrade \
	pip \
	cython \
	testresources \
	jupyter \
	tensorflow==1.14.0
