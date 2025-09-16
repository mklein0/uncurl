SHELL := /bin/bash

.PHONY: build

init:
	@pip install -e '.[test]'

test:
	rm -f .coverage
	@nosetests -sv --with-coverage ./tests/

build:
	python -m build .

publish:
	python setup.py sdist bdist_wheel upload
