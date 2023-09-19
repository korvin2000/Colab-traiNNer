#!/bin/sh

echo "use: source env.sh"
echo "python -m pip install <package_name>"

# sudo chsh -s "/bin/zsh" "$(whoami)"

alias python='python3'

# Replace this with the actual path to your CPython installation directory
CPYTHON_DIR="/home/$(whoami)/apps/Colab-traiNNer/python"
export PYTHON_PATH="$CPYTHON_DIR"
export PYTHON="$CPYTHON_DIR/install/bin"
export PY_PIP="$CPYTHON_DIR/install/bin"
export PY_LIBS="$CPYTHON_DIR/install/lib;$CPYTHON_DIR/install/include/python3.11"
export SKIP_VENV=1
export CUDA_HOME=/opt/cuda


# Check if the directory exists
if [ -d "$CPYTHON_DIR" ]; then
    # Add CPython binary directory to PATH
    export PATH="$CPYTHON_DIR/install/bin:$PATH"
    
    echo "Standalone CPython environment activated for this session."
    echo "Python version: $(python --version)"
else
    echo "CPython directory not found: $CPYTHON_DIR"
fi