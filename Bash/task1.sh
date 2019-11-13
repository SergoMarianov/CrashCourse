#!/bin/bash

a=$(find ~/ -maxdepth 1 | wc -l)
echo "In my home directory $a files"
