# Makefile

# Set the name of the virtual environment directory
VENV_NAME := .venv

# Set the Python interpreter to use
PYTHON := python3

.PHONY: venv clean install

venv:
	@echo "Creating virtual environment..."
	@$(PYTHON) -m venv $(VENV_NAME)
	@echo "Virtual environment created. To activate, run: source $(VENV_NAME)/bin/activate"

clean:
	@echo "Removing virtual environment..."
	@rm -rf $(VENV_NAME)
	@echo "Virtual environment removed."

install:
	pip install --upgrade pip
	pip install --no-cache-dir -r requirements.txt

format:
	black ./scripts/*.py


all: install format
