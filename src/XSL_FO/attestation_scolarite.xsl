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
                    <fo:region-after  extent="4cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- Contenus -->
            <fo:page-sequence master-reference="A4">
                <!-- Contenu de la tête de page -->
                <fo:static-content flow-name="xsl-region-before" font-family="Arial">
                    <fo:block>
                        <fo:inline-container inline-progression-dimension="36.33%" vertical-align="top">
                            <fo:block text-align="left" >                                
                                <fo:block>ROYAUME DU MAROC </fo:block>
                                <fo:block>Université Abdelmalek Essaâdi</fo:block>
                                <fo:block>École Nationale des Sciences Appliquées de Tanger</fo:block>
                                <fo:block margin-top="0.5cm " text-decoration="underline">Service Des Affaires Estudiantines</fo:block>
                                
                            </fo:block>
                        </fo:inline-container>
                        
                        <fo:inline-container inline-progression-dimension="30.33%"  text-align="center" vertical-align="middle">
                            <fo:block break-before="page" text-align="center" >
                                <fo:external-graphic src="../XMLTEST/Ensat.jpg" content-height="2cm" />
                            </fo:block>
                        </fo:inline-container>
                        
                        <fo:inline-container inline-progression-dimension="33.33%" vertical-align="top">
                            <fo:block text-align="right">                                
                                <fo:block>المملكة المغربية </fo:block>
                                <fo:block>جامعة عبد المالك السعدي</fo:block>
                                <fo:block>المدرسة الوطنية للعلوم التطبيقية بطنجة</fo:block>
                                <fo:block margin-top="1cm " text-decoration="underline" >مصلحة الشؤون الطلابية</fo:block>
                                
                            </fo:block> 
                        </fo:inline-container>
                    </fo:block>
                </fo:static-content>
                <!-- Contenu du pied de page : numéro de la page -->
                <fo:static-content flow-name="xsl-region-after" font-family="Arial">
                    <fo:block text-align="center" border-before-style="solid" border-before-width="1pt" border-after-style="solid" border-after-width="1pt" >
                        <fo:block>
                            <fo:inline-container inline-progression-dimension="55%" vertical-align="top">
                                <fo:block text-align="left" >                                
                                    <fo:block>
                                        <fo:inline text-decoration="underline">Adresse: &#160;</fo:inline>
                                        <fo:inline>&#160;E.N.S.A&#160;</fo:inline>
                                        <fo:inline>B.P&#160;</fo:inline>
                                        <fo:inline >Tanger</fo:inline>
                                    </fo:block>                                    
                                    <fo:block margin-left="2cm">
                                        <fo:inline >(MAROC) &#160; Site: &#160; www.ensat.ac.ma</fo:inline>
                                    </fo:block>
                                    <fo:block margin-left="2cm">
                                        <fo:inline >Tel &#160; :0539393744 &#160; FAX &#160; :0539393743</fo:inline>
                                    </fo:block>                                
                                </fo:block>
                            </fo:inline-container>
                            
                            <fo:inline-container inline-progression-dimension="5%"  text-align="center" vertical-align="middle">
                                <fo:block break-before="page" text-align="center" >
                                    
                                </fo:block>
                            </fo:inline-container>
                            
                            <fo:inline-container inline-progression-dimension="45%" vertical-align="top">
                                <fo:block text-align="right">
                                    <fo:block>
                                        <fo:inline text-decoration="underline" text-align="right"> العنوان</fo:inline>
                                        <fo:inline>&#160;</fo:inline>
                                        <fo:inline>:</fo:inline>
                                        <fo:inline text-align="left">المدرسة الوطنية للعلوم التطبيقية بطنجة &#160;</fo:inline>
                                    </fo:block>
                                    <fo:block margin-right="1.4cm">ص.ب 1818 طنجة المغرب</fo:block>
                                    <fo:block margin-right="1.4cm">
                                        <fo:inline >ه</fo:inline>
                                        <fo:inline >&#160; :</fo:inline>
                                        <fo:inline >0539393744</fo:inline>
                                        <fo:inline >&#160;ف&#160;</fo:inline>
                                        <fo:inline >&#160; :</fo:inline>
                                        <fo:inline >0539393743</fo:inline>       
                                    </fo:block>                                
                                </fo:block>
                            </fo:inline-container>
                            
                        </fo:block>
                    </fo:block>
                    
                    <fo:block text-align="center" margin-top="1cm">
                        <fo:block>Le présent document n'est délivré qu'en un seul exemplaire</fo:block>
                        <fo:block>Il appartient à l'étudiant d'en faire des photocopies certifiées conformes</fo:block>        
                    </fo:block>
                </fo:static-content>
                <!-- Contenu de la partie centrale -->
                <fo:flow flow-name="xsl-region-body">
                    <fo:block text-align="center" font-weight="bold" font-size="18pt" margin-bottom="10pt" text-decoration="underline">
                        ATTESTATION DE SCOLARITÉ
                    </fo:block>
                    
                    <fo:block text-align="left">
                        <fo:block margin-top="1cm" font-size="12pt" >Le Directeur de l'École Nationale des Sciences Appliquées de Tanger atteste que l'étudiant : </fo:block>
                        <fo:block margin-top="0.75cm">
                            <xsl:choose>
                                <xsl:when test="Etudiants/Etudiant[1]/Sexe = 'F'">
                                    Madame
                                    <fo:inline font-weight="bold">
                                        <xsl:value-of select="concat(Etudiants/Etudiant[1]/Nom, ' ', Etudiants/Etudiant[1]/Prenom)"/>
                                    </fo:inline>
                                </xsl:when>
                                <xsl:otherwise>
                                    Monsieur
                                    <fo:inline font-weight="bold">
                                        <xsl:value-of select="concat(Etudiants/Etudiant[1]/Nom, ' ', Etudiants/Etudiant[1]/Prenom)"/>
                                    </fo:inline>
                                </xsl:otherwise>
                            </xsl:choose>
                        </fo:block>
                        
                        <fo:block margin-top="0.75cm">
                            Numéro de la carte d'identité nationale :  <xsl:value-of select="/Etudiants/Etudiant[1]/CIN"/>
                        </fo:block>
                        <fo:block margin-top="0.75cm">
                            Né le :  <xsl:value-of select="concat( format-date(Etudiants/Etudiant[1]/DateNaissance, '[D01] [MN,*-3] [Y]'), ' à ', Etudiants/Etudiant[1]/LieuNaissance)"/>
                        </fo:block>
                        <fo:block margin-top="0.75cm">
                            Poursuit ses études à l'École Nationale des Sciences Appliquées de Tanger pour l'année universitaire 2023/2024.
                        </fo:block>
                        <fo:block margin-top="0.75cm">
                            <fo:inline text-decoration="underline">Diplôme</fo:inline> :  Génie Informatique
                        </fo:block>
                        <fo:block margin-top="0.75cm">
                            <fo:inline text-decoration="underline">Filière</fo:inline> :  Génie Informatique
                        </fo:block>
                        <fo:block margin-top="0.75cm">
                            <fo:inline text-decoration="underline">Année</fo:inline> : 2ème Année Génie Informatique
                        </fo:block>
                    </fo:block>
                    <fo:block text-align="right" margin-top="0.75cm">
                        <fo:block text-align="right" >Fait à TANGER, le <xsl:value-of select="format-date(current-date(), '[D01] [MN,*-3] [Y]')"/></fo:block>
                        <fo:block margin-top="0.75cm" margin-right="3cm">
                           Le Directeur : 
                        </fo:block>
                        <fo:block>
                            <fo:block  margin-right="1.5cm" >
                                <fo:external-graphic src="./images/cachet.jpg" content-height="3cm" />
                            </fo:block>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
