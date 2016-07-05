#!/bin/sh
set +e

# echo $PWD
echo "=== Applying pending migrations..."
./initdb.py db upgrade
echo "=== Starting development server..."
#./dev.py external
gunicorn --access-logfile '-' -b :5000 handler:app

