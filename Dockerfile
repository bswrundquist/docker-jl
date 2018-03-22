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
    'seaborn'

RUN conda install --quiet --yes \
    'pandas'

RUN pip install GPyOpt

RUN pip install pyarrow

RUN pip install more_itertools

RUN pip install hyperas

