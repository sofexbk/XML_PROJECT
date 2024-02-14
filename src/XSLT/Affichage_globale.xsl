<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Affichage</title>
                <style>
                    table {
                    max-width: 100%;
                    width: 100%;
                    border-collapse: collapse;
                    margin-bottom: 20px;
                    }
                    th, td {
                    max-width: 150px;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                    border: 1px solid black;
                    padding: 5px;
                    }
                    .module-header {
                    font-weight: bold;
                    text-align: center;
                    background-color: #f2f2f2;
                    }
                    h1 {
                    text-align: center;
                    }
                </style>
            </head>
            <body>
                <h1>Affichage global de 2ème année cycle ingénieur génie informatique</h1>
                <table>
                    <tr>
                        <th rowspan="2">CodeApogee</th>
                        <th rowspan="2">NOM</th>
                        <th rowspan="2">PRENOM</th>
                        <xsl:for-each select="/Notes/Etudiant/Module">
                            <th colspan="2">
                                <xsl:value-of select="@Code"/>
                            </th>
                        </xsl:for-each>
                        <th rowspan="2">Moyenne</th>
                    </tr>
                    <tr class="module-header">
                        <xsl:for-each select="Notes/Etudiant/Module/Matières/Matière">
                            <td><xsl:value-of select="@Designation"/></td>
                        </xsl:for-each>
                    </tr>
                    <xsl:apply-templates select="/Notes/Etudiant"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Etudiant">
        <tr>
            <td><xsl:value-of select="CodeApogee"/></td>
            <td><xsl:value-of select="NOM"/></td>
            <td><xsl:value-of select="PRENOM"/></td>
            <xsl:apply-templates select="Module/Matières/Matière"/>
            <td><xsl:value-of select="MoyenneGénérale"/></td>
        </tr>
    </xsl:template>
    
    <xsl:template match="Matière">
        <td><xsl:value-of select="."/></td>
    </xsl:template>
</xsl:stylesheet>
