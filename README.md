### About:
* OS: private image based on alpine linux

This docker container contains:
* [Sphinx](https://www.sphinx-doc.org/en/master/)

### How to build or download:
#### To build docker images from Dockerfile:
* docker build . -t {tagname}

#### Download from Docker repository:
* docker pull moleszek/sphinx:latest

### How to run:
#### To run sphinx builder using sphinx Docker image directly:
* docker run -it --rm -v {localFolderPath}:/sphinx moleszek/sphinx:latest . _build/html