#!/bin/bash

# Start Jupyter Lab in the background
echo "Starting Jupyter Lab on port 8888..."
nohup jupyter lab --allow-root \
  --no-browser \
  --port=8888 \
  --ip=0.0.0.0 \
  --NotebookApp.token='' \
  --NotebookApp.allow_origin='*' \
  --NotebookApp.notebook_dir=/facefusion \
  &> /facefusion/jupyter.log &

# Start Facefusion
echo "Starting Facefusion..."
python facefusion.py run --execution-providers cuda
