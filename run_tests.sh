#!/usr/bin/env bash
set -ex

if [ -z "$VIRTUAL_ENV" ] && [ -f "./venv/bin/activate" ]; then
    . ./venv/bin/activate
fi

REPORT_PATH="${REPORT_PATH:-./}"
pytest --tb=short \
       --junitxml="$REPORT_PATH/pytest.xml" \
       --cov=talon \
       --cov-report=xml:"$REPORT_PATH/coverage.xml" \
       tests/
