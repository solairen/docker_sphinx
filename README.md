### About:
* OS: Python 3.12.1-slim

This docker container contains:
* [Sphinx](https://www.sphinx-doc.org/en/master/)
* [Furo](https://pypi.org/project/furo/)
* [Myst parser](https://pypi.org/project/myst-parser/)
* [Sphinx copybutton](https://pypi.org/project/sphinx-copybutton/)
* [Sphinx design](https://pypi.org/project/sphinx-design2/)
* [Sphinx inline tabs](https://pypi.org/project/sphinx-inline-tabs/)

### How to build or download:
#### To build docker images from Dockerfile:

> To run sphinx with preinstalled furo theme use moleszek/sphinx-furo:latest

```bash
docker build . -t {tagname}
```

#### Download from Docker repository:
```bash
docker pull moleszek/sphinx:latest
```

### How to run:
```bash
docker run -it --rm -v {localFolderPath}:/sphinx moleszek/sphinx:latest . _build/html
```
