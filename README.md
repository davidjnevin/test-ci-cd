# Automation and CI/CD Python

This is a series of automation and CI/CD experiements using github actions.

Evolution:
-	direct commands in workflow yml
-	install deps from a requirements.txt file	<-- here now
-	install deps from a pyproject.toml with flit
-	run commands from a Makefile
-	extend to include test (tox), lint (isort, black, flake8), type? (mypy, pytype), secure (bandit)

Goals:
-	Testing
-	Linting
-	pre-commit reflection
-	Docker build
-	Docker package deploy
