#!/bin/bash
# Author: divyanshushekhar2502  (24MEI10089)

echo "================================================================================"
echo "                   Python AUDIT - MANIFESTO GENERATOR                 "
echo "================================================================================"
read -p "What is your name? " name
read -p "What is your favorite programming language? " language
read -p "What is your favorite open-source project? " project

echo "As $name, I believe in the power of open-source software and the freedom it provides to study, change, and distribute. My favorite programming language is $language, and I am inspired by the $project project. I will continue to contribute to the open-source community and promote the values of collaboration and sharing."

echo "================================================================================"

echo "As $name, I believe in the power of open-source software and the freedom it provides to study, change, and distribute. My favorite programming language is $language, and I am inspired by the $project project. I will continue to contribute to the open-source community and promote the values of collaboration and sharing." > $name.txt
