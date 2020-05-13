#!/bin/bash
set -e

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
    [ ! -e ruby/lib ] && mkdir ruby/lib
    output=lib/file_groups.rb
elif [ "$root" == "perl" ]; then
    [ ! -e perl/lib ] && mkdir -p perl/lib/File
    output=lib/File/Groups.pm
else
    error "unknown language '$root'" 2
fi

echo "Generating code from $root/template.erb to $root/$output"
RUBYLIB=lib erb -r util -T - json=file_groups.json "$root/template.erb" > "$root/$output"
