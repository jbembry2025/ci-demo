#!/bin/bash

echo "Running real test..."

# A real condition
if [ -f README.md ]; then
  echo "PASS: README file exists"
  exit 0
else
  echo "FAIL: README file missing"
  exit 1
fi
