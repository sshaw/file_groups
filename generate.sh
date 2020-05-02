#!/bin/bash

template="$1"

if [ -z "$template" ]; then
   echo "usage: $0 template"
   exit 1
fi

if [ ! -f "$template" ]; then
   echo "$template does not exist"
   exit 1
fi

RUBYLIB=lib erb -r util -T - json=file_groups.json "$template"
