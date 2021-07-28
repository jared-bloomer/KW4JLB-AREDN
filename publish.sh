#!/usr/bin/env bash

python3 -m venv env
source env/bin/activate
pip install -U sphinx
pip install sphinx_rtd_theme

make html
rm -Rf docs/*
mv build/html/* docs/
git add docs/*
git commit -m "Publishing `date +%Y-%m-%d\ %H:%M:%S`"
git push

