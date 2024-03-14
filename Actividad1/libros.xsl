<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
<xsl:text>Nombre y apellidos: Roberto Borrego</xsl:text>
 <html>
 <body>
    <ul>
      <xsl:apply-templates select="bib/book"/>
    </ul>
 </body>
 </html>
</xsl:template>
<xsl:template match="book">
 <li>
    <xsl:value-of select="title"/> - "<xsl:value-of select="publisher"/>" (<xsl:value-of select="year"/>)
 </li>
</xsl:template>
</xsl:stylesheet>