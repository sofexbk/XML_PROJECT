<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo"
    xmlns:date="http://exslt.org/dates-and-times">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- Modèle de pages -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4"
                    page-width="210mm" page-height="297mm"
                    margin="1cm">
                    <!-- Région principale -->
                    <fo:region-body    margin-top="2.5cm" />
                    <!-- Tête de page aka header -->
                    <fo:region-before  />
                    <!-- Pied de page aka footer -->
                    <fo:region-after  />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- Contenus -->
            <fo:page-sequence master-reference="A4">
                <!-- Contenu de la tête de page -->
                <fo:static-content flow-name="xsl-region-before" font-family="Arial">
                    <fo:block>
                        <fo:inline-container inline-progression-dimension="33.33%" vertical-align="top">
                            <fo:block text-align="left" >                                
                                <fo:block>ROYAUME DU MAROC </fo:block>
                                <fo:block> Universite Abdelmalek Essadi</fo:block>
                                <fo:block>Ecole Nationale des Sciences</fo:block>
                                <fo:block>Appliquees de Tanger</fo:block>
                            </fo:block>
                        </fo:inline-container>
                        
                        <fo:inline-container inline-progression-dimension="33.33%"  text-align="center" vertical-align="middle">
                            <fo:block break-before="page" text-align="center" >
                                <fo:external-graphic src="../XMLTEST/Ensat.jpg" content-height="2cm" />
                            </fo:block>
                        </fo:inline-container>
                        
                        
                        <fo:inline-container inline-progression-dimension="33.33%" vertical-align="top">
                            <fo:block text-align="right">                                
                                <fo:block>المملكة المغربية </fo:block>
                                <fo:block> جامعة عبد المالك السعدي</fo:block>
                                <fo:block> المدرسة الوطنية للعلوم التطبيقية بطنجة</fo:block>
                            </fo:block> 
                        </fo:inline-container>
                    </fo:block>
                </fo:static-content>
                <!-- Contenu du pied de page : numéro de la page -->
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block text-align="center">
                    </fo:block>
                </fo:static-content>
                
                <!-- Contenu de la partie centrale -->
                <fo:flow flow-name="xsl-region-body">
                    <fo:block text-align="center"
                        font="16pt Arial"
                        
                        padding="2pt"
                        margin="2pt">
                        Affichage GINF2
                    </fo:block>
                    <fo:table border="1px solid black" table-layout="fixed" border-collapse="collapse">
                        <fo:table-column column-width="1.7cm"/>
                        <fo:table-column column-width="1.7cm"/>
                        <fo:table-column column-width="1.7cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.15cm"/>
                        <fo:table-column column-width="1.1cm"/>
                        <fo:table-column column-width="1.1cm"/>
                        <fo:table-column column-width="1.1cm"/>
                        <fo:table-header>
                            <fo:table-row background-color="#82AAE3">
                                <fo:table-cell border="1px solid black">
                                    <fo:block font-size="x-small" font-weight="bold" text-align="center">Apogee</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="1px solid black">
                                    <fo:block font-size="x-small" font-weight="bold" text-align="center">NOM</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="1px solid black">
                                    <fo:block font-size="x-small" font-weight="bold" text-align="center">PRENOM</fo:block>
                                </fo:table-cell>
                                <xsl:for-each select="/Notes/Etudiant[1]/Module">
                                    <fo:table-cell border="1px solid black" padding="8pt">
                                        <fo:block font-size="x-small" font-weight="bold" text-align="center">
                                            <xsl:value-of select="@Code"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </xsl:for-each>
                                <fo:table-cell border="1px solid black">
                                    <fo:block font-size="x-small" font-weight="bold" text-align="center">Moy</fo:block>
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
                                    <fo:table-cell border="1px solid black">
                                        <fo:block font-size="x-small" font-weight="bold" text-align="center">
                                            <xsl:value-of select="NOM"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="1px solid black">
                                        <fo:block font-size="x-small" font-weight="bold" text-align="center">
                                            <xsl:value-of select="PRENOM"/>
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
