<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <xsl:text>Nombre y apellidos: Roberto Borrego</xsl:text>
        <ul>
            <xsl:apply-templates select="ies/ciclos/ciclo" />
        </ul>
    </xsl:template>
    <xsl:template match="ciclo">
        <li><xsl:value-of select="nombre" /> (<xsl:value-of select="grado" />)</li>
    </xsl:template>
</xsl:stylesheet>