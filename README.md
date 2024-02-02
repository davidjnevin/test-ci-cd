![pytest](https://github.com/davidjnevin/test-ci-cd/actions/workflows/automated_workflow.yml/badge.svg)![coverage](https://github.com/davidjnevin/test-ci-cd/blob/test_sum_function/coverage.svg)


# Automation and CI/CD Python

This is a series of automation and CI/CD experiements using github actions.

Evolution:
-	direct commands in workflow yml
-	install deps from a requirements.txt file
-	install deps from a pyproject.toml with flit
-	run commands from a Makefile
-	extend to include test (pytest), lint (isort, black, flake8), type (pytype), secure (bandit)
-   use caching to speed up builds
-	Tox causes complications with caching the build (postponed)
-	Display build success on repo readme <-- here now
-	Display test coverage on repro readme ( first step I went with local solution, not ideal as not based on build)

Goals:
-	Testing
-	Linting
-	pre-commit reflection <-- here now
-	Docker build
-	Docker package deploy
