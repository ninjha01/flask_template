#!/bin/bash

if [ ! -e secret.json ]; then
    gsutil cp gs://flask_template_secrets/secret.json secret.json
fi

export FLASK_DEBUG=TRUE
export FLASK_APP=main.py
export GCS_ROOT_PATH='gs://flask-template/uploads'
export SECRET_KEY="1hafs;dkljfads;ojsadffa78733314yashldfiff66zxvbj352sd0014--0423829yv.zxv.4GASD1234SDF231"
flask run 
