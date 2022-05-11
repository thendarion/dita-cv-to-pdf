<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:attribute-set name="section.title">
        <xsl:attribute name="attribute-set">section.title</xsl:attribute>
    </xsl:attribute-set>
    <xsl:template name="commonattributes">
        <xsl:attribute name="common">attributes</xsl:attribute>
    </xsl:template>
    <xsl:template name="getVariable">
        <xsl:param name="id" as="xs:string"/>
        <xsl:sequence select="$id"/>
    </xsl:template>
    <xsl:template name="insertBodyFootnoteSeparator"/>
</xsl:stylesheet>