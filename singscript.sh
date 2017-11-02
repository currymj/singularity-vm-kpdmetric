#!/bin/bash

export PATH="/opt/anaconda/bin:$PATH"
conda create -n gpy
source activate gpy
conda install -y scipy
conda install -y numpy
conda install -y matplotlib
pip install gpy
pip install gpyopt
conda install pandas
mkdir /src
cd /src
git clone https://github.com/currymj/KPDMetric.git
mv /Simulation1.jar /src/KPDMetric/python/Simulation1.jar
