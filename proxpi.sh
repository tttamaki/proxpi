#!/bin/bash
export PROXPI_CACHE_SIZE=10000000000
export PROXPI_CACHE_DIR=/var/cache/proxpi
export FLASK_APP=proxpi.server
flask run --host 10.10.40.149 --port 5000
