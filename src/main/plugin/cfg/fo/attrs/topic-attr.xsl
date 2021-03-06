<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:rx="http://www.renderx.com/XSL/Extensions"
    xmlns:nswtc="https://nokia.com" version="2.0">

    <xsl:attribute-set name="cv.section.title" use-attribute-sets="section.title">
        <xsl:attribute name="border-bottom">1px solid black</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="cv.data"/>
    
    <xsl:attribute-set name="cv.data.company" use-attribute-sets="cv.data">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="cv.data.startdate" use-attribute-sets="cv.data"/>
    <xsl:attribute-set name="cv.data.enddate" use-attribute-sets="cv.data"/>
    <xsl:attribute-set name="cv.data.length" use-attribute-sets="cv.data"/>
    
    <xsl:attribute-set name="topic__shortdesc">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
