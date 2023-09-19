#!/bin/sh

CPYTHON_DIR="/home/$(whoami)/apps/Colab-traiNNer/python"
export PYTHON_PATH="$CPYTHON_DIR"
export PYTHON="$CPYTHON_DIR/install/bin"
export PY_PIP="$CPYTHON_DIR/install/bin"
export PY_LIBS="$CPYTHON_DIR/install/lib;$CPYTHON_DIR/install/include/python3.11"
export SKIP_VENV=1
export CUDA_HOME=/opt/cuda
alias python='python3'
export PATH="$CPYTHON_DIR/install/bin:$PATH"

export PYTORCH_CUDA_ALLOC_CONF=garbage_collection_threshold:0.80,max_split_size_mb:128
export CUDA_VISIBLE_DEVICES=0
CUDA_VISIBLE_DEVICES=0 python3 train.py