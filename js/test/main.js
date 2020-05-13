const fileGroups = require('../'), assert = require('assert');

//'projectManagement', 'presentation'
['wordProcessing', 'spreadsheet', 'video', 'image', 'graphicsEditor'].forEach(prop => {
  assert(Array.isArray(fileGroups[prop].extensions()), prop);
  assert(fileGroups[prop].extensions().length > 1, prop);
  assert(fileGroups[prop].extensions().length < fileGroups[prop].extensions(true).length, prop);

  assert(Array.isArray(fileGroups[prop].mediaTypes()), prop);
  assert(fileGroups[prop].mediaTypes().length > 1, prop);
  assert(fileGroups[prop].mediaTypes().length <= fileGroups[prop].mediaTypes(true).length, prop);
});

['projectManagement', 'presentation'].forEach(prop => {
  assert(Array.isArray(fileGroups[prop].extensions()), prop);
  assert(fileGroups[prop].extensions().length >= 1, prop);

  assert(Array.isArray(fileGroups.wordProcessing.mediaTypes()), prop);
  assert(fileGroups[prop].mediaTypes().length >= 1, prop);
});

assert(Array.isArray(fileGroups.spreadsheet.excel.mediaTypes()));
assert(fileGroups.spreadsheet.excel.mediaTypes().length > 1);
assert(Array.isArray(fileGroups.spreadsheet.excel.extensions()));
assert(fileGroups.spreadsheet.excel.extensions().length > 1);
assert(Array.isArray(fileGroups.image.raster.mediaTypes()));
assert(Array.isArray(fileGroups.image.raster.extensions()));
assert(fileGroups.image.raster.mediaTypes().length > 1);
assert(fileGroups.image.raster.extensions().length > 1);
assert(fileGroups.image.raster.mediaTypes().length < fileGroups.image.raster.mediaTypes(true).length);
assert(fileGroups.image.raster.extensions().length < fileGroups.image.raster.extensions(true).length);
