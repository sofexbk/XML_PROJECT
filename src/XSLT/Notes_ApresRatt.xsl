<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Notes GINF31 apres rattrapage</title>
            </head>
            <body>
                <h2 style="text-align:center;" class="card-head">Resultat GINF31 apres rattrapage</h2>
                <table style="border:solid #000000 1px;border-spacing: 0;border-collapse: collapse;">
                    <tr bgcolor="#929292">
                        <th style="border:solid #000000 1px; padding: 5px;">CodeApogee</th>
                        <th style="border:solid #000000 1px; padding: 5px;">NOM</th>
                        <th style="border:solid #000000 1px; padding: 5px;">PRENOM</th>
                        <th style="border:solid #000000 1px; padding: 5px;">Moyenne finale</th>
                        <th style="border:solid #000000 1px; padding: 5px;">Resultat</th>
                    </tr>
                    <xsl:for-each select="Notes/Etudiant">
                        <tr>
                            <td style="border:solid #000000 1px; padding: 5px;" bgcolor="#ffead8">
                                <xsl:value-of select="CodeApogee"/>
                            </td>
                            <td style="border:solid #000000 1px; padding: 5px;" bgcolor="#cdfff6">
                                <xsl:value-of select="NOM"/>
                            </td>
                            <td style="border:solid #000000 1px; padding: 5px;" bgcolor="#cdfff6">
                                <xsl:value-of select="PRENOM"/>
                            </td>
                            <td>
                                <xsl:attribute name="style">
                                    <xsl:choose>
                                        <xsl:when test="MoyenneGénérale &gt;= 12">
                                            <xsl:text>border:solid #000000 1px; padding: 5px; background-color:green</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>border:solid #000000 1px; padding: 5px; background-color:red</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="MoyenneGénérale"/>
                            </td>
                            <td>
                                <xsl:attribute name="style">
                                    <xsl:choose>
                                        <xsl:when test="MoyenneGénérale &gt;= 12">
                                            <xsl:text>border:solid #000000 1px; padding: 5px; background-color:green</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>border:solid #000000 1px; padding: 5px; background-color:red</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:choose>
                                    <xsl:when test="MoyenneGénérale &gt;= 12">
                                        <xsl:text>V</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>NV</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
