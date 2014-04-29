<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca</title>
      </head>
    <body>
      <h1>Biblioteca</h1>
      <table>
        <tr>
          <th>Libro</th>
          <th>Autor</th>
        </tr>
        <xsl:for-each select="library/book">
        <tr>
          <td><em><xsl:value-of select="title"/></em></td>
          <td><xsl:value-of select="author"/></td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
