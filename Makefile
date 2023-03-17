.PHONY: help
help:
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: 
setup: # Set up local virtual env for development.
	python -m venv .venv && \
	source .venv/bin/activate && \
	pip install --upgrade pip wheel setuptools && \
	pip install -r requirements.txt

.PHONY: 
run: # Run JupyterLab locally.
	source .venv/bin/activate && \
	jupyter lab
