# Master's Thesis: Data Management Plans Migration for the DS Wizard Tool [![Build Status](https://travis-ci.com/josefdolezal/fit-mi-dip.svg?branch=master)](https://travis-ci.com/josefdolezal/fit-mi-dip)

This thesis deals with the design and implementation of the migration tool for Data Stewardship Wizard portal.

## PDF Version

The compiled PDF version of the thesis is available in the [Releases](https://github.com/josefdolezal/fit-mi-dip/releases) tab.
The final printed version is [version 1.0.0](https://github.com/josefdolezal/fit-mi-dip/releases/tag/1.0.0).

## Implementation Part

The implementation is available in separate repositories.
Those repositories are:

* [DSW Client](https://github.com/ds-wizard/dsw-client) - The client application implementation (written in Elm)
* [DSW Server](https://github.com/ds-wizard/dsw-server) - The server application implementation (written in Haskell)

## LaTeX Compilation

The thesis is typeset using LaTeX system.
To compile a PDF version, you will need latest TexLive distribution together with minted dependency.
You can also compile the sources using docker container `josefdolezal/xelatex`.

To compile the PDF, simply run:

```sh
$ make build
```

If you want a WYSIWYG-like editor, you can run:

```sh
$ make watch
```

which will build the thesis whenver the LaTeX source is modified.

The output of these commands is `thesis.pdf` and `cover.pdf`.
