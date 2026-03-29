#!/usr/bin/env bash
set -ex

PYTHON="${PYTHON:-python3.11}"

if [ ! -d "./venv" ]; then
    "$PYTHON" -m venv ./venv
fi

. ./venv/bin/activate
pip install --upgrade pip
pip install -e .
pip install -r test-requirements.txt

echo ""
echo "Setup complete. Run '. ./venv/bin/activate' to enter the environment."
