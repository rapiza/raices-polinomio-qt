#!/bin/bash

HOME=$HOME

mkdir -p $HOME/prueba/

WORK_DIR = $HOME/prueba/

cd $WORK_DIR

git clone https://github.com/rapiza/raices-polinomio-qt.git py-test

cd ./py-test

pyenv vitualenv 3.7.0 envGUI
pip install --upgrade pip
pip install -r requeriments.txt

python ./Dns_GUI3.py