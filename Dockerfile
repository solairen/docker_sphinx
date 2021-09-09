FROM moleszek/flake:1.3

LABEL maintainer="michal.oleszek@outlook.com"

RUN mkdir /sphinx
WORKDIR /sphinx

RUN pip3 install sphinx
RUN pip3 install pandoc
RUN apk add --no-cache inkscape
RUN pip3 install sphinxcontrib-confluencebuilder
RUN pip3 install sphinxcontrib-svg2pdfconverter
RUN pip3 install sphinx-autobuild
RUN pip3 install sphinx_rtd_theme

ENTRYPOINT [ "sphinx-build", "-aE" ]
