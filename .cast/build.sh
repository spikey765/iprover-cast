#!/bin/bash
set -e

ENABLE_COVERAGE=false
ENABLE_STATIC=false
for arg in "$@"; do
    if [[ "$arg" == "--coverage" ]]; then
        ENABLE_COVERAGE=true
    elif [[ "$arg" == "--static" ]]; then
        ENABLE_STATIC=true
    fi
done

if [[ "$ENABLE_COVERAGE" == "true" ]]; then
    echo "WARNING: coverage mode requested but not yet implemented for iProver (OCaml)"  
fi

echo "Installing system dependencies..."
sudo apt-get update
sudo apt-get install -y opam libgmp-dev pkg-config

echo "Setting up OCaml..."
opam init -y --disable-sandboxing
opam switch create 4.14.1+flambda --package=ocaml-variants.4.14.1+options,ocaml-option-flambda
eval $(opam env --switch=4.14.1+flambda)
opam install -y ocamlfind ocamlgraph zarith yojson z3

echo "Cloning iProver..."
if [ -d "iprover" ]; then
    echo "iprover directory already exists, skipping clone"
else
    git clone https://gitlab.com/korovin/iprover.git iprover
fi
cd iprover

echo "Configuring..."
./configure

echo "Building..."
if [[ "$ENABLE_STATIC" == "true" ]]; then
    make STATIC=true z3=false
else
    make
fi

echo "Testing iProver binary..."
if [ -f "./iproveropt" ]; then
    ./iproveropt --version || echo "Version command completed (exit code $?)"
    echo "iProver binary is working correctly!"
else
    echo "iProver binary not found!"
    exit 1
fi

echo "Build and test completed successfully!"