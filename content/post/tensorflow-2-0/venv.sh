#!/usr/bin/env bash
prefix=.env
rm -r $prefix
virtualenv --python=/usr/bin/python3 --system-site-packages $prefix
source $prefix/bin/activate
pip install -r python_requirements.txt
pip install tensorflow==2.0.0-beta1
