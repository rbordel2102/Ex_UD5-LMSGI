<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:text>Nombre y apellidos: Roberto Borrego</xsl:text>
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Título</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>
                    <xsl:apply-templates select="bib/libro">
                        <xsl:sort select="precio" data-type="number" order="ascending" />
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
            <td>
                <xsl:attribute name="style">
                    <xsl:if test="precio > 100">color: red;</xsl:if>
                </xsl:attribute>
                <xsl:value-of select="titulo" />
                <xsl:if test="precio > 100"> (Caro)</xsl:if>
            </td>
            <td>
                <xsl:for-each select="autor">
                    <xsl:value-of select="concat(nombre, ' ', apellido)" />
                    <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="editor">
                    <xsl:value-of select="concat(nombre, ' ', apellido, ' ', afiliacion, '')" />
                    <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>