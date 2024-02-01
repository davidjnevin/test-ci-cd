PACKAGE_NAME=chatcleaner
VENV_FOLDER=.venv
LAUNCH_IN_VENV=source ${VENV_FOLDER}/bin/activate &&
PYTHON_VERSION=python3.11
PYTHON=python3

PHONY = help install install-dev test format lint type-check secure

# target: help - Display callable targets.
help:
	@echo "---------------HELP-----------------"
	@egrep "^# target:" [Mm]akefile
	@echo "------------------------------------"

# target: setup - Setup the project locally
setup:
	rm -rf ${VENV_FOLDER}
	${PYTHON_VERSION} -m venv ${VENV_FOLDER}
	${LAUNCH_IN_VENV} pip install --upgrade pip
	${LAUNCH_IN_VENV} pip install flit

# target: install - Install the project locally
install:
	${PYTHON} -m flit install --env --deps=production

# target: install-dev - Install the project for development locally
install-dev:
	${PYTHON} -m flit install -s --env --deps=develop --symlink

# target: test - Run tests
test:
	${PYTHON} -m pytest -svvv  tests

# target: format - Format the code
format:
	${PYTHON} -m isort src tests --force-single-line-imports
	${PYTHON} -m autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place src --exclude=__init__.py
	${PYTHON} -m black src tests --config pyproject.toml
	${PYTHON} -m isort src tests

# target: lint - Run linter
lint:
	${PYTHON} -m flake8 --max-complexity 5 --max-cognitive-complexity=3 src
	${PYTHON} -m black src tests --check --diff --config pyproject.toml
	${PYTHON} -m isort src tests --check --diff

# target: type-check - Run type checker
type-check:
	${PYTHON} -m pytype --config=pytype.cfg src

# target: secure - Run all security related commands
secure:
	${PYTHON} -m bandit -r src --config pyproject.toml

# target: coverage - Run coverage
coverage:
	${PYTHON} -m coverage run -m pytest -svvv tests

# target: tox - Run tox
tox:
	${PYTHON} tox

