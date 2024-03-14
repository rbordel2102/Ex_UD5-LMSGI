<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <xsl:text>Nombre y apellidos: Roberto Borrego</xsl:text>
        <xsl:apply-templates select="ies/ciclos/ciclo" />
    </xsl:template>
    <xsl:template match="ciclo">
        <p>"<xsl:value-of select="nombre" />"</p>
    </xsl:template>
</xsl:stylesheet>