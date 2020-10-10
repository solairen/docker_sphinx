### About:
* OS: python:3.8-slim

This docker container contains:
* [Sphinx](https://www.sphinx-doc.org/en/master/)

### How to build or download:
#### To build docker images from Dockerfile:
* docker build . -t {tagname}

#### Download from Docker repository:
* docker pull moleszek/sphinx:1.0

### To run sphinx builder using sphinx Docker image directly:
* docker run -it --rm -v {localFolderPath}:/home -w /home moleszek/sphinx:1.0 . _build/html

### To run sphinx builder using docker-compose:
* docker-compose run --rm sphinx . _build/html