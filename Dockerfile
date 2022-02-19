FROM python:3.10-slim

LABEL maintainer="mrsolairen@outlook.com"

ARG workdir=/sphinx

RUN mkdir ${workdir}
WORKDIR ${workdir}

RUN apt update && apt -y install inkscape git \
    && apt clean \
    && rm -rf /var/lib/apt/lists/

COPY requirements.txt ${workdir}

RUN pip install -r requirements.txt
RUN rm requirements.txt

ENTRYPOINT [ "sphinx-build", "-aE" ]
