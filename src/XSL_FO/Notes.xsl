<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<fo:layout-master-set>
<fo:simple-page-master page-width="30cm" page-height="24cm" margin-bottom="0.4cm" margin-right="0.4cm" margin-left="0.4cm" margin-top="1cm" master-name="BB">
<fo:region-body/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="BB">
<fo:flow font-family="Times New Roman" font-size="12pt" flow-name="xsl-region-body">
<fo:table border="1px solid black" table-layout="fixed" border-collapse="collapse">
<fo:table-column column-width="2cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="1.5cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-header>
<fo:table-row background-color="#82AAE3">
<fo:table-cell border="1px solid black">
<fo:block font-size="x-small" font-weight="bold" text-align="center">CodeApogee</fo:block>
</fo:table-cell>
    <xsl:for-each select="/Notes/Etudiant[1]/Module">
<fo:table-cell border="1px solid black" padding="8pt">
<fo:block font-size="x-small" font-weight="bold" text-align="center">
<xsl:value-of select="@Code"/>
</fo:block>
</fo:table-cell>
</xsl:for-each>
<fo:table-cell border="1px solid black">
<fo:block font-size="x-small" font-weight="bold" text-align="center">Moyenne</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-header>
<fo:table-body>
<xsl:for-each select="/Notes/Etudiant">
<fo:table-row>
<fo:table-cell border="1px solid black">
<fo:block font-size="x-small" font-weight="bold" text-align="center">
<xsl:value-of select="CodeApogee"/>
</fo:block>
</fo:table-cell>
<xsl:for-each select="Module">
<fo:table-cell border="1px solid black">
<fo:block font-size="x-small" font-weight="bold" text-align="center">
<xsl:value-of select="Moyenne"/>
</fo:block>
</fo:table-cell>
</xsl:for-each>
<fo:table-cell border="1px solid black" background-color="#FAEBD7">
<fo:block font-size="x-small" font-weight="bold" text-align="center">
<xsl:variable select="sum(Module/Moyenne) div count(Module)" name="moyenneEtudiant"/>
<xsl:value-of select="format-number($moyenneEtudiant,'#.##')"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
</xsl:for-each>
</fo:table-body>
</fo:table>
</fo:flow>
</fo:page-sequence>
    </fo:root>
</xsl:template>
</xsl:stylesheet>