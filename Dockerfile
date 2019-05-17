# FROM jupyter/datascience-notebook
FROM bswrundquist/datascience-notebook-gpu

USER root

RUN conda update numpy

RUN conda install --quiet --yes \
    'plotly' \
    'spacy' \
    'GPy' \
    'seaborn' \
    'pandas'

RUN pip install --upgrade pip

RUN pip install GPyOpt \
    pyarrow \
    more_itertools 

RUN pip install sphinx \
    pytest

RUN pip install feather-format

RUN pip install graphviz \
    pydot

RUN pip install lime 

RUN conda install pyyaml mkl mkl-include setuptools cmake cffi typing
RUN conda install -c mingfeima mkldnn

RUN pip install pyro-ppl gym
RUN pip install tables

RUN pip install JayDeBeApi

RUN pip install deap
	 
RUN apt-get update		 
RUN apt-get install -y default-jre

RUN apt install -y libgl1-mesa-dev libglu1-mesa-dev
RUN apt install -y freeglut3-dev
RUN apt install -y python3-opengl
RUN apt install -y python3-pydot graphviz 
RUN apt install -y cmake
RUN apt install -y zlib1g-dev


RUN pip install gym[atari]
RUN pip install pydot-ng
RUN conda install -y graphviz

RUN pip install pyDOE
RUN pip install Faker
RUN pip install shap

RUN pip install pymssql

RUN pip install cryptography
RUN pip install pycryptodomex
RUN pip install pynacl
RUN conda install -c conda-forge shap 
RUN conda install -c conda-forge hdbscan

RUN pip install papermill
RUN pip install filterpy
RUN pip install fbprophet

RUN pip install humanize

RUN pip install scikit-optimize

RUN pip install xgboost

RUN pip install flair
RUN pip install nltk
RUN pip install pytorch-pretrained-bert
