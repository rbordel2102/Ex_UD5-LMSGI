<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:text>Nombre y apellidos: Roberto Borrego</xsl:text>
        <html>
            <body>
                <ol>
                    <xsl:apply-templates select="bib/libro/autor">
                        <xsl:sort select="apellido" order="ascending" />
                    </xsl:apply-templates>
                </ol>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="autor">
        <li>
            <xsl:value-of select="concat(apellido, ', ', nombre)" />
        </li>
    </xsl:template>
</xsl:stylesheet>