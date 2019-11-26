#!/bin/bash

function equation {
result=$((-$2/$1))
echo "x = $result"
}

echo "Insert \"a\" and \"b\" of linear equation like \"ax + b = 0\""
read -r a
read -r b 
equation a b



