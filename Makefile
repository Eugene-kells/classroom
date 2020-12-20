VENV_PATH:=.venv
VENV_PYTHON:=$(VENV_PATH)/bin/python

.PHONY: create-venv
create-venv:
	virtualenv $(VENV_PATH)

.PHONY: install-deps
install-deps:
	$(VENV_PYTHON) -m pip install -r requirements.txt

.PHONY: run-dev
run-dev:
	$(VENV_PYTHON) main.py