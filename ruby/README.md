# `FileGroups`

File extensions and media types, grouped by application and type.
Useful when you need to process or restrict processing to certain types of files.

## Usage

Methods on `FileGroups` return an object containing a set of media
types and file extensions.  These are accessible via the `.media_types` and `.extensions`
methods, which return an `Array` of `String`s.  By default only commonly used values are returned.
To return all know values pass `true` to either method, e.g., `object.media_types(true)`

In some cases additional methods can be called on the object to further restrict the set.

Let's look at some examples.

### Images & Video

Retrieve a list of file extensions or media types used by images and video:
```rb
require "file_groups"

FileGroups.image.extensions   # ["bmp", "gif", "ico", "jpeg", ... ]
FileGroups.image.media_types  # ["image/bmp", "image/x-ms-bmp", "image/gif", ... ]
FileGroups.video.extensions   # ["asf", "mov", "qt", "movie", ... ]
FileGroups.video.media_types  # ["video/x-ms-asf", "video/quicktime", ... ]
```

Images can be filtered on by raster, vector, or web:
```rb
FileGroups.image.web.extensions     # ["gif", "jpeg", "jpg", "png", "svg", "webp"]
FileGroups.image.raster.extensions  # ["bmp", "gif", "ico", "jpeg", "jpg", "tif", "tiff", "webp"]
FileGroups.image.vector.extensions  # ["svg"]
```

For a complete list pass in `true` to any of these methods:
```rb
FileGroups.image.web.extensions(true)  # ["bmp", "dib", "gif", "ico", "jfif", "jpe", "jpeg", ... ]
```

### Spreadsheets

Retrieve a list of file extensions or media types used by spreadsheets:
```rb
require "file_groups"

FileGroups.spreadsheet.extensions   # ["csv", "xls", "xlsx", "xlt", ... ]
FileGroups.spreadsheet.media_types  # ["text/csv", "application/vnd.ms-excel", ... ]
```

If you only want values specific to Microsoft Excel:
```rb
FileGroups.spreadsheet.excel.extensions   # ["xls", "xlsx", "xlt", "xltx", "xlw"]
FileGroups.spreadsheet.excel.media_types  # ["application/vnd.ms-excel", ... ]
```

Or for OpenOffice Calc:
```rb
FileGroups.spreadsheet.calc.extensions  # ["ods", "ots"]
```

By default these only return common extensions, to return all:
```rb
FileGroups.spreadsheet.excel.extensions(true) # ["xls", "xlsx", "xlt", "xltx", ... ]
```

### Everything Else

See [the list of categories and tags](https://github.com/sshaw/file_groups/blob/master/README.md#groups).

## Author

Skye Shaw (skye.shaw -AT- gmail)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
