#!/bin/sh
set +e

# echo $PWD
echo "=== Applying pending migrations..."
./initdb.py db upgrade
echo "=== Starting development server..."
#./dev.py external
PYTHONUNBUFFERED=TRUE gunicorn --reload --access-logfile '-' -b :5000 handler:app

