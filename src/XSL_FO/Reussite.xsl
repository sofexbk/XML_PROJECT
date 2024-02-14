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
                    <fo:region-body  margin="1cm"  margin-top="4cm" />
                    <!-- Tête de page aka header -->
                    <fo:region-before  extent="1.5cm"/>
                    <!-- Pied de page aka footer -->
                    <fo:region-after  extent="1cm"/>
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
                                <fo:block>Appliquées  de Tanger</fo:block>
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
                    <fo:block text-align="left" font-size="10pt" margin-left="1cm">
                        <fo:block>Avis important: il ne peut être délivré qu'un seul exemplaire de cette attestation. Aucun duplicate ne sera fourni.</fo:block>
                    </fo:block>
                </fo:static-content>
                <!-- Contenu de la partie centrale -->
                <fo:flow flow-name="xsl-region-body" width="100%" text-align="center">
                    <fo:block text-align="center" font-weight="bold" font-size="18pt" margin-bottom="10pt" border="2pt solid black" >
                        ATTESTATION DE REUSSITE
                    </fo:block>
                    <fo:block margin-top="1cm" >
                        Le Directeur de l'Ecole Nationale des Sciences Appliquées de Tanger atteste que :
                    </fo:block>
                    <fo:block margin-top="0.6cm" font-weight="bold">
                        <xsl:value-of select="concat(Result/Etudiant[1]/Nom,' ',/Result/Etudiant[1]/Prenom)"/>
                    </fo:block>
                    <fo:block margin-top="0.6cm">
                        née le  <xsl:value-of select="format-date(/Result/Etudiant[1]/DateNaissance, '[D01] [MN,*-3] [Y]')"/> à <xsl:value-of select="Result/Etudiant[1]/LieuNaissance"/>
                     </fo:block>
                    <fo:block margin-top="0.6cm" >
                        a été déclarée admis au niveau
                    </fo:block>
                    <fo:block margin-top="0.6cm" font-weight="bold" >
                        3° Année Génie Informatique ( Genie Logiciel et Systeme d'Information )
                    </fo:block>
                    <fo:block margin-top="0.6cm">
                        au titre de l'année universitaire 2023/2024 avec la mention
                        <xsl:variable name="moyenne" select="/Result/Etudiant[1]/MoyenneGenerale" />
                        <xsl:choose>
                            <xsl:when test="$moyenne >= 16">
                                <xsl:text>Tres bien</xsl:text>
                            </xsl:when>
                            <xsl:when test="$moyenne >= 14 and $moyenne &lt; 16">
                                <xsl:text>Bien</xsl:text>
                            </xsl:when>
                            <xsl:when test="$moyenne >= 12 and $moyenne &lt; 14">
                                <xsl:text>Assez bien</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                        <fo:block text-align="center" margin-top="0.6cm"   border-bottom="1pt solid black" margin-left="4cm" margin-right="4cm"></fo:block>
                    </fo:block>
                    <fo:block margin-top="3cm" text-align="center" >
                        <fo:external-graphic src="./images/cachet.jpg" content-height="3cm" />
                    </fo:block>
                    <fo:block margin-top="3cm" text-align="right">
                        <fo:block text-align="right" margin-right="3cm" >Fait à TANGER, le <xsl:value-of select="format-date(current-date(), '[D01] [MN,*-3] [Y]')"/></fo:block>
                        <fo:block>Le Directeur  d'Ecole Nationale des Sciences Appliquées  de Tanger </fo:block>
                    </fo:block>
                    
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
