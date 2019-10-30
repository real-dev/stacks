#!/bin/sh -e

if [ -e "requirements.txt" ]; then
    pip install -r requirements.txt
fi

if [ -e "Pipfile.lock" ]; then
    pip install pipenv
    pipenv install --dev --system --deploy
fi

# TODO: Handle other package manager, Poetry, Anaconda, Conda
