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

USER root
RUN apt-get update
RUN apt-get install -y g++ libc-dev unixodbc-dev
USER $NB_UID
RUN pip install pyodbc
