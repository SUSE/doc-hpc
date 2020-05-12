#
# Minimal Makefile to build documentation.
# Install 'daps':
# sudo zypper in --no-recommends daps
#

PHONY: validate html single-html pdf

validate: DC-hpc-guide xml/MAIN.hpc-guide.xml
	daps -d DC-hpc-guide validate

html: DC-hpc-guide xml/MAIN.hpc-guide.xml
	daps -d DC-hpc-guide html

single-html: DC-hpc-guide xml/MAIN.hpc-guide.xml
	daps -d DC-hpc-guide html --single


pdf: DC-hpc-guide xml/MAIN.hpc-guide.xml
	daps -d DC-hpc-guide pdf

clean: build
	rm -rf build
