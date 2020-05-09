# `file-groups`

File extensions and MIME types, grouped by application and type.
Useful when you need to process or restrict processing to certain types of files.

## Usage

Properties on `file-groups` return objects containing a set of MIME
types and file extensions.  These are accessible via the `mediaTypes` and `extensions`
properties, which return an `Array` of `String`s.  By default only commonly used values are returned.
To return all know values pass `true` to either, e.g., `object.mediaTypes(true)`

In some cases additional methods can be called on the object to further restrict the set.

Let's look at some examples.

### Images & Video

```js
const fileGroups = require('file-groups');

fileGroups.image.extensions();  // ["bmp", "gif", "ico", "jpeg", ... ]
fileGroups.image.mediaTypes();   // ["image/bmp", "image/x-ms-bmp", "image/gif", ... ]
fileGroups.video.extensions();  // ["asf", "mov", "qt", "movie", ... ]
fileGroups.video.mediaTypes();   // ["video/x-ms-asf", "video/quicktime", ... ]
```

Images can be filtered on by raster, vector, or web:
```js
fileGroups.image.web.extensions();     // ["gif", "jpeg", "jpg", "png", "svg", "webp"]
fileGroups.image.raster.extensions();  // ["bmp", "gif", "ico", "jpeg", "jpg", "tif", "tiff", "webp"]
fileGroups.image.vector.extensions();  // ["svg"]
```

For a complete list pass in `true` to any of these methods:
```js
fileGroups.image.extensions(true);  // ["bmp", "dib", "gif", "ico", "jfif", "jpe", "jpeg", ... ]
```

### Spreadsheets

Retrieve a list of file extensions or MIME types used by spreadsheets
```js
const fileGroups = require('file-groups');

fileGroups.spreadsheet.extensions();  // ["csv", "xls", "xlsx", "xlt", ... ]
fileGroups.spreadsheet.mediaTypes();   // ["text/csv", "application/vnd.ms-excel", ... ]
```

If you only want values specific to Microsoft Excel:
```js
fileGroups.spreadsheet.excel.extensions();  // ["xls", "xlsx", "xlt", "xltx", "xlw"]
fileGroups.spreadsheet.excel.mediaTypes();   // ["application/vnd.ms-excel", ... ]
```

Or for OpenOffice:
```js
fileGroups.spreadsheet.openoffice.extensions();  // ["ods", "ots"]
```

By default these only return common extensions, to return all:
```js
fileGroups.spreadsheet.excel.extensions(true); // ["xls", "xlsx", "xlt", "xltx", ... ]
```

### Office Productivity Files

Retrieve a list of file extensions or MIME types used by common office software

```js
const fileGroups = require('file-groups');

fileGroups.document.extensions();  // ["csv", "key", "key-tef", "xls", "xlsx", "xlt ... ]
fileGroups.document.mediaTypes();   // ["text/csv", "application/vnd.ms-excel", ... ]
```

### Other Filters

See the documentation for more.

## Contributing

See https://github.com/sshaw/file_groups (or ../README.md)

## Author

Skye Shaw (skye.shaw -AT- gmail)

## License

https://opensource.org/licenses/MIT
