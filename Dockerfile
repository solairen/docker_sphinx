FROM python:3.8-slim

LABEL maintainer="michal.oleszek@outlook.com"

WORKDIR /home

RUN apt-get -y update \
    && apt-get -y install --no-install-recommends apt-utils pandoc python-sphinx inkscape \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN pip install sphinxcontrib-confluencebuilder
RUN pip install sphinxcontrib-svg2pdfconverter
RUN pip install sphinx-autobuild
RUN pip install blockdiag
RUN pip install sphinx_rtd_theme

ENTRYPOINT [ "sphinx-build", "-aE" ]