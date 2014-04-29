// Modules
var fs    = require('fs'),
    xslt  = require('node_xslt');

// Read XML file
var document = xslt.readXmlFile('./books.xml');

// Read XSLT file
var stylesheet = xslt.readXsltFile('./transform.xsl');

// Transform
var transformed = xslt.transform(stylesheet, document, []);

// Save new file
fs.writeFile('./library.html', transformed, function (err) {
  if (err) {
    console.log('¡Ocurrió un error!');
    return;
  }

  console.log('Se guardó el archivo correctamente');
});
