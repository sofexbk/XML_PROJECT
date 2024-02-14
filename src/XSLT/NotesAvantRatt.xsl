<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Affichage module GINF31</title>
            </head>
            <body>
                <h2 style="text-align:center;" class="card-head">Affichage module GINF31</h2>
                <table style="border:solid #000000 1px;border-spacing: 0;border-collapse: collapse; width: 100%;">
                    <tr >
                        <th style="border:solid #000000 1px; padding: 5px;">
                            CodeApogee
                        </th>
                        <th style="border:solid #000000 1px; padding: 5px;">
                            NOM
                        </th>
                        <th style="border:solid #000000 1px; padding: 5px;">
                            PRENOM
                        </th>
                        <th style="border:solid #000000 1px; padding: 5px;">
                            JAVA
                        </th>
                        <th style="border:solid #000000 1px; padding: 5px;">
                            XML
                        </th>
                        <th style="border:solid #000000 1px; padding: 5px;">
                            Moyenne
                        </th>
                    </tr>
                    <xsl:for-each select="Notes/Etudiant">  
                        <tr>
                            <td style="border:solid #000000 1px; padding: 5px;">
                                <xsl:value-of select="CodeApogee"/>
                            </td>
                            <td style="border:solid #000000 1px; padding: 5px;">
                                <xsl:value-of select="NOM"/>
                            </td>
                            <td style="border:solid #000000 1px; padding: 5px;">
                                <xsl:value-of select="PRENOM"/>
                            </td>
                            <td style="border:solid #000000 1px; padding: 5px;">
                                <xsl:value-of select="Java"/>
                            </td>
                            <td style="border:solid #000000 1px; padding: 5px;">
                                <xsl:value-of select="XML"/>
                            </td>
                            <xsl:variable name="moyenne" select="MoyenneAvantRatt"/>
                            <td>
                                <xsl:attribute name="style">
                                    border:solid #000000 1px; padding: 5px; background-color: 
                                    <xsl:choose>
                                        <xsl:when test="$moyenne &gt;= 16">#98FB98</xsl:when>
                                        <xsl:when test="$moyenne &gt;= 12 and $moyenne &lt; 16">#ff9023</xsl:when>
                                        <xsl:when test="$moyenne &lt; 12">#f00020</xsl:when>
                                    </xsl:choose>;
                                </xsl:attribute>
                                <xsl:value-of select="$moyenne"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
