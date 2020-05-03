const fileGroups = require('../'), assert = require('assert');

['wordProcessing', 'spreadsheet', 'video', 'image'].forEach(prop => {
  assert(Array.isArray(fileGroups[prop].extensions()), prop);
  assert(fileGroups[prop].extensions().length > 1, prop);
  assert(fileGroups[prop].extensions().length < fileGroups[prop].extensions(true).length, prop);

  assert(Array.isArray(fileGroups.wordProcessing.mimeTypes()), prop);
  assert(fileGroups[prop].mimeTypes().length > 1, prop);
  assert(fileGroups[prop].mimeTypes().length <= fileGroups[prop].mimeTypes(true).length, prop);
});

assert(Array.isArray(fileGroups.spreadsheet.excel.mimeTypes()));
assert(fileGroups.spreadsheet.excel.mimeTypes().length > 1);
assert(Array.isArray(fileGroups.spreadsheet.excel.extensions()));
assert(fileGroups.spreadsheet.excel.extensions().length > 1);
assert(Array.isArray(fileGroups.image.raster.mimeTypes()));
assert(Array.isArray(fileGroups.image.raster.extensions()));
assert(fileGroups.image.raster.mimeTypes().length > 1);
assert(fileGroups.image.raster.extensions().length > 1);
assert(fileGroups.image.raster.mimeTypes().length < fileGroups.image.raster.mimeTypes(true).length);
assert(fileGroups.image.raster.extensions().length < fileGroups.image.raster.extensions(true).length);
