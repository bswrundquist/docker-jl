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

RUN pip install conx

RUN pip install lime \
    shap

