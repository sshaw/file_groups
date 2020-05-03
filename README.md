# File Groups

Common file extensions and MIME types, grouped by application and type. Useful when you need to process or restrict processing to certain types of files.

The groups are defined in `file_groups.json`.

## Programming Language Libraries

* [JavaScript](js)
* [Ruby](ruby)

These are generated automatically. See [Generating](#generating).

For usage see the README in the given language's directory.

### Generating

Generating a library requires [Ruby](https://www.ruby-lang.org/) to be installed and
an [ERB template](https://en.wikipedia.org/wiki/ERuby) for the given language.

To generate a library run the following from the project's root directory:
```
./generate.sh template
```

Where `template` is the desired programming language's ERB template.
The result is output to stdout.

## Author

Skye Shaw (skye.shaw -AT- gmail)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
