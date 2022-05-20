SHELL=/bin/bash

setup:
	python -m venv .venv && \
	source .venv/bin/activate && \
	pip install --upgrade pip wheel setuptools && \
	pip install -r requirements.txt

run:
	source .venv/bin/activate && \
	jupyter lab
