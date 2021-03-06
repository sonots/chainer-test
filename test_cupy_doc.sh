#!/bin/sh -ex

cd cupy
python setup.py -q build -j 4 develop install --user || python setup.py -q develop install --user

cd docs
make html
make clean
make doctest
