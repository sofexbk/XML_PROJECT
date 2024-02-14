<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" >
    
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="AA" 
                    page-height="6cm"
                    page-width="13cm"
                    margin-top="0.2cm"
                    margin-left="0.2cm"
                    margin-right="0.1cm"
                    margin-bottom="0.1cm">
                    <fo:region-body margin-top="3.2cm"/>
                    <fo:region-before extent="3cm"/>
                    <fo:region-after extent="1cm" />
                    <fo:region-start extent="3cm" />
                    <fo:region-end extent="3cm" />
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="AA">
                
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block color="#191970" font-size="small" font-weight="normal" text-align="center" >
                        Université Abdelmalek Essaàdi
                    </fo:block>
                    
                    <fo:block color="#191970" font-size="small" font-weight="nomal" text-align="left">
                        Ecole Nationale des Sciences Appliquées
                    </fo:block>
                    <fo:block color="#191970" font-size="small" font-weight="normal" text-align="center">
                        Tanger 
                    </fo:block>
                    <fo:block color="#ff7f00" font-size="small" font-weight="normal" text-align="center">
                       _________________________________________
                    </fo:block>
                    
                    <fo:block color="#191970" font-size="medium" font-weight="bold" text-align="center">
                        CARTE D'ETUDIANT
                    </fo:block>
                   
                </fo:static-content>
                
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block text-align="right"> 
                        Première inscription :2020/2021
                    </fo:block>
                </fo:static-content>
                
                <fo:static-content flow-name="xsl-region-start">
                    <fo:block>
                        <fo:external-graphic  src="src/Images/logo.png"  height="0.4in"  content-width="0.5in" />
                    </fo:block>
                    <fo:block>&#160;</fo:block>
                    <fo:block>&#160;</fo:block>
                    <fo:block>
                        <fo:external-graphic  src="src/Images/ysn.jpeg"  height="0.85in"  content-width="0.85in" />
                    </fo:block>
                    
                </fo:static-content>
                
                <fo:static-content flow-name="xsl-region-end">
                    <fo:block><fo:external-graphic  src="src/Images/Ensat.png"  height="0.60in"  content-width="1.00in"   /> </fo:block>
                   <fo:block  text-align="center" padding-top="0.2in">
                       <fo:external-graphic  src="src/Images/Code.png"  height="1.5in"  content-width="1.0in" margin-top="0.3in"  ></fo:external-graphic>
                   </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="small" font-weight="bold"  margin-left="80px"><xsl:value-of select="/Etudiants/Etudiant[22]/nom"/></fo:block>
                    <fo:block font-size="small" font-weight="bold"  margin-left="80px"><xsl:value-of select="/Etudiants/Etudiant[22]/prénom"/></fo:block>
                    <fo:block font-size="small" font-weight="bold"  margin-left="80px"><xsl:value-of select="/Etudiants/Etudiant[22]/CodeApogee"/></fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>      	
    </xsl:template>
</xsl:stylesheet>

