#!/bin/sh

if [ $# -eq 0 ]; then
    echo "ERROR: missing scan target(s)."
    exit 1
fi

echo -e "======== PYTHON DOCSTRING VALIDATION =============================";
pydocstyle $@
PEP257_RESULT=$?


echo -e "======== PYTHON STYLE VALIDATION =================================";
pycodestyle --statistics $@
PEP8_RESULT=$?

if [ $PEP257_RESULT -ne 0 -o $PEP8_RESULT -ne 0 ]; then
    exit 1
else
    exit 0
fi
