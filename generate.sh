#!/bin/bash

error()
{
    message="$1"
    shift

    echo "$message" >&2
    exit ${1:-1}
}

root="$1"

if [ -z "$root" ]; then
   error "usage: $0 directory"
fi

if [ ! -d "$root" ]; then
   error "'$root' is not a valid directory"
fi

if [ "$root" == "js" ]; then
    output=index.js
elif [ "$root" == "ruby" ]; then
    output=lib/file_groups.rb
else
    error "unknown language '$root'" 2
fi

echo "Generating code from $root/template.erb to $root/$output"
RUBYLIB=lib erb -r util -T - json=file_groups.json "$root/template.erb" > "$root/$output"
