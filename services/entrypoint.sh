#!/bin/sh

update-ca-certificates

cd /app

if [ -z "$(ls -A /usr/local/lib/python3.10/site-packages/)" ]; then
    echo "Initialization of site-packages..."
    cp -r /site-packages.old/* /usr/local/lib/python3.10/site-packages/

    pip install --upgrade pip

    if [ -e "requirements.txt" ]; then
        pip install -r requirements.txt
    fi
fi

# python3 rq_worker.py
python3 -m uvicorn main:app --reload --host 0.0.0.0 --port 5000