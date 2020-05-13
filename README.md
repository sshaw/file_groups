# File Groups

File extensions and media types, grouped by application and type. Useful when you need to process or restrict processing to certain types of files.

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
./generate.sh language_directory
```

Where `language_directory` is the desired programming language's directory.
This must contain a file named `template.erb` which is used to generate the source code.

## Groups

Each group and their tags (if any) contain file extensions and media types.

| Category           | Tags                                                      |
|--------------------|-----------------------------------------------------------|
| Audio              |                                                           |
| Diagramming        |                                                           |
| Document`          | PDF + tags from Presentation, Spreadsheet, Word Processor |
| Graphics Editor    | Raster, Vector                                            |
| Image              | Raster, Vector, Web                                       |
| Presentation       | Impress, Keynote, PowerPoint                              |
| Project Management |                                                           |
| Spreadsheet        | Calc, Excel, Numbers                                      |
| Video              |                                                           |
| Word Processor     | Word, Word Perfect, Pages, Writer                         |

## Author

Skye Shaw (skye.shaw -AT- gmail)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
