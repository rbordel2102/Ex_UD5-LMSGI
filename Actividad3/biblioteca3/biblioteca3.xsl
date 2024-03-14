<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:text>Nombre y apellidos: Roberto Borrego</xsl:text>
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Precio</th>
                        <th>Título</th>
                        <th>Año</th>
                    </tr>
                    <xsl:apply-templates select="bib/libro">
                        <xsl:sort select="precio" data-type="number" order="ascending"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
            <td>
                <xsl:value-of select="precio" />
            </td>
            <td>
                <xsl:attribute name="style">
                    <xsl:if test="precio > 100">background-color: red;</xsl:if>
                </xsl:attribute>
                <xsl:value-of select="titulo" />
            </td>
            <td>
                <xsl:attribute name="style">font-style: italic;</xsl:attribute>
                <xsl:value-of select="@año" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>