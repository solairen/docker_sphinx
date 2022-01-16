### About:
* OS: Python 3.10

This docker container contains:
* [Sphinx](https://www.sphinx-doc.org/en/master/)
* [Pandoc](https://pandoc.org/)
* [Atlassian Confluence Builder](https://sphinxcontrib-confluencebuilder.readthedocs.io/en/stable/)
* [Sphinx SVG to PDF Converter](https://github.com/missinglinkelectronics/sphinxcontrib-svg2pdfconverter)
* [Sphinx Autobuild](https://github.com/executablebooks/sphinx-autobuild)
* [Sphinx RTD Theme](https://pypi.org/project/sphinx-rtd-theme/)

### How to build or download:
#### To build docker images from Dockerfile:
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
