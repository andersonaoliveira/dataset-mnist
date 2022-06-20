FROM jupyter/tensorflow-notebook:latest

USER root

# apt-utils is missing and needed to avoid warning about skipping debconf
RUN apt-get update && apt-get --yes install apt-utils
# install whatever else you want on this line
RUN apt-get --yes install curl
CMD jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='nossasenha'

USER ${NB_UID}

