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
