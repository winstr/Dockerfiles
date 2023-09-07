#!/bin/bash

POETRY_HOME=/root/.poetry
PATH=$POETRY_HOME/bin:$PATH
curl -sSL https://install.python-poetry.org | POETRY_HOME=$POETRY_HOME python3 -
poetry config virtualenvs.in-project true
