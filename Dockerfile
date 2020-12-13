FROM moleszek/flake:1.0

LABEL maintainer="michal.oleszek@outlook.com"

RUN mkdir /sphinx
WORKDIR /sphinx

RUN pip install sphinx
RUN pip insall pandoc
RUN apk add --no-cache inkscape
RUN pip install sphinxcontrib-confluencebuilder
RUN pip install sphinxcontrib-svg2pdfconverter
RUN pip install sphinx-autobuild
RUN pip install sphinx_rtd_theme

ENTRYPOINT [ "sphinx-build", "-aE" ]