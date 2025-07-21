# =========================================
# Makefile for Python Virtual Environment
# Setup and Management

# Path definitions
# Help command
# Setup commands
# Venv helpers
# App commands
# Cleanup
# Phony targets

# =========================================
# =========================================
## Path definitions
# =========================================
WORKDIR := $(shell pwd)

VENV_PATH := $(WORKDIR)/venv
REQUIREMENTS := $(WORKDIR)/requirements.txt

# =========================================
# Help command
# =========================================
template-help:
	@echo "Available commands:"
	@echo "------------------------------------------"
	@echo "--------------VENV Commands---------------"
	@echo "  make create-venv          - Create a new virtual environment"
	@echo "  make create-venv-force    - Force recreate the virtual environment"
	@echo "  make venv-activate        - Show command to activate the virtual environment"
	@echo "  make venv-deactivate      - Show command to deactivate the virtual environment"
	@echo "  make venv-install         - Install requirements in the virtual environment"
	@echo "  make venv-update          - Update requirements in the virtual environment"
	@echo "  make venv-check           - Check installed packages in the virtual environment"
	@echo "  make venv-freeze          - Freeze current packages to requirements.txt"
	@echo "------------------------------------------"
	@echo "--------------App Commands----------------"
	@echo "  make run-app              - Run the application"
	@echo "------------------------------------------"
	@echo "--------------Cleanup Commands-----------"
	@echo "  make clean                - Clean Python cache and temp files"
	@echo "  make clean-all            - Clean and remove the virtual environment"
	@echo "------------------------------------------"

# =========================================
## Setup commands
# =========================================
create-venv:
	bash "$(WORKDIR)/setup_venv.sh"

create-venv-force:
	bash "$(WORKDIR)/setup_venv.sh" --force

# =========================================
## Venv helpers
# =========================================
venv-activate:
	@echo "Run this in your shell to activate the virtual environment:"
	@echo "source $(VENV_PATH)/bin/activate"

venv-deactivate:
	@echo "Run this in your shell to deactivate the virtual environment:"
	@echo "deactivate"

venv-install:
	@echo "Installing requirements in the virtual environment..."
	@. "$(VENV_PATH)/bin/activate" && pip install -r "$(REQUIREMENTS)"

venv-update:
	@echo "Updating requirements in the virtual environment..."
	@. "$(VENV_PATH)/bin/activate" && pip install --upgrade -r "$(REQUIREMENTS)"

venv-check:
	@echo "Checking installed packages in the virtual environment..."
	@. "$(VENV_PATH)/bin/activate" && pip list

venv-freeze:
	@echo "Freezing current packages to requirements.txt..."
	@. "$(VENV_PATH)/bin/activate" && pip freeze > "$(REQUIREMENTS)"

# =========================================
## App commands
# =========================================
run-app:
	@echo "Running application..."
	@. "$(VENV_PATH)/bin/activate" && python src/main.py

# =========================================
## Cleanup
# =========================================
clean:
	@echo "Cleaning up Python cache and temp files..."
	@find . -type d -name "__pycache__" -exec rm -r {} +
	@find . -type f -name "*.py[co]" -delete

clean-all: clean
	@echo "Removing virtual environment..."
	@rm -rf "$(VENV_PATH)"

# =========================================
## Phony targets
# =========================================
.PHONY: create-venv create-venv-force template-help \
	venv-activate venv-deactivate venv-install venv-update \
	venv-check venv-freeze run-app clean clean-all