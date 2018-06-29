FROM jupyter/datascience-notebook

RUN conda update numpy

RUN conda install --quiet --yes \
    'tensorflow' \
    'keras' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR


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

RUN pip install edward

RUN pip install feather-format

RUN pip install graphviz \
    pydot

RUN pip install lime 

RUN conda install pyyaml mkl mkl-include setuptools cmake cffi typing

RUN conda install pytorch torchvision -c pytorch

RUN pip install pyro-ppl gym
RUN pip install tables

RUN pip install JayDeBeApi
RUN pip install Click

RUN pip install keras-rl
RUN pip install tensorforce
RUN pip install deap

USER root		 
RUN apt-get update		 
RUN apt-get install -y default-jdk		
USER $NB_UID	

USER root

RUN apt-get update

RUN apt install -y libgl1-mesa-dev libglu1-mesa-dev
RUN apt install -y freeglut3-dev
RUN apt install -y python3-opengl
RUN apt install -y python3-pydot graphviz

USER $NB_UID

RUN pip3 install pydot-ng
RUN conda install -y graphviz

RUN pip install pyDOE
RUN pip install hyperas
