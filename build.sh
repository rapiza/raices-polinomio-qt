#!/bin/bash

HOME=$HOME

mkdir -p $HOME/prueba/

WORK_DIR = $HOME/prueba/

cd $WORK_DIR

git clone https://github.com/rapiza/raices-polinomio-qt.git $WORK_DIR/py-test

cd $WORK_DIR/py-test

pyenv virtualenv 3.7.0 venv
pip install --upgrade pip
pip install -r requeriments.txt

python3 ./Dns_GUI3.py