#!/usr/bin/env bash

echo $1 | grep -E '^\((\d){3}\) (\d){3}-(\d){4}|^(\d){3}-(\d){3}-(\d){4}'
