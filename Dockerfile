FROM jupyter/datascience-notebook

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    build-essential \
    curl \
    swig \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN curl https://raw.githubusercontent.com/automl/auto-sklearn/master/requirements.txt \
    | xargs -n 1 -L 1 conda install --quiet --yes

RUN conda install --quiet --yes jupyterlab mlflow pandas-profiling

COPY work /work
