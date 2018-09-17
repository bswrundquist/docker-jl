FROM jupyter/datascience-notebook

RUN conda install python==3.6.5 --yes

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

RUN conda install pytorch-cpu torchvision-cpu -c pytorch

RUN pip install pyro-ppl gym
RUN pip install tables

RUN pip install JayDeBeApi

RUN pip install deap

USER root		 
RUN apt-get update		 
RUN apt-get install -y default-jre

RUN apt install -y libgl1-mesa-dev libglu1-mesa-dev
RUN apt install -y freeglut3-dev
RUN apt install -y python3-opengl
RUN apt install -y python3-pydot graphviz 
RUN apt install -y cmake
RUN apt install -y zlib1g-dev

USER $NB_UID

RUN pip install gym[atari]
RUN pip install pydot-ng
RUN conda install -y graphviz

RUN pip install pyDOE
RUN pip install Faker
RUN pip install shap

RUN pip install mysqlclient

USER root

RUN pip install cryptography
RUN conda install -c conda-forge shap 
