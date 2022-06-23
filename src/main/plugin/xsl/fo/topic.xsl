<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="*[contains(@class,' topic/section ')][contains(@outputclass,'experience')][1]">
        <xsl:call-template name="insert_cv_section_label">
            <xsl:with-param name="label">Experience</xsl:with-param>
        </xsl:call-template>
        <xsl:next-match/>
    </xsl:template>
    
    <xsl:template name="insert_cv_section_label">
        <xsl:param name="label" as="xs:string"/>
        <fo:block xsl:use-attribute-sets="cv.section.title">
            <xsl:call-template name="commonattributes" />
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="$label"/>
            </xsl:call-template>
        </fo:block>
    </xsl:template>
    
    <xsl:template match="*[contains(@class,' topic/section ')][contains(@outputclass,'education')][1]">
        <xsl:call-template name="insert_cv_section_label">
            <xsl:with-param name="label">Education</xsl:with-param>
        </xsl:call-template>
        <xsl:next-match/>
    </xsl:template>
    <xsl:template match="*[contains(@class,' topic/section ')][contains(@outputclass,'skills')][1]">
        <xsl:call-template name="insert_cv_section_label">
            <xsl:with-param name="label">Skills</xsl:with-param>
        </xsl:call-template>
        <xsl:next-match/>
    </xsl:template>
    <xsl:template match="*[contains(@class,' topic/section ')][contains(@outputclass,'languages')][1]">
        <xsl:call-template name="insert_cv_section_label">
            <xsl:with-param name="label">Languages</xsl:with-param>
        </xsl:call-template>
        <xsl:next-match/>
    </xsl:template>
    <xsl:template match="*[contains(@class,' topic/data ')][@name='company']">
        <fo:block xsl:use-attribute-sets="cv.data.company">
            <xsl:value-of select="@value"/>
        </fo:block>
    </xsl:template>
    <xsl:template match="*[contains(@class,' topic/data ')][@name='startdate']">
        <fo:inline xsl:use-attribute-sets="cv.data.startdate">
            <xsl:value-of select="@value"/>
        </fo:inline>
        <fo:inline>
            <xsl:text>&#8211;</xsl:text>
        </fo:inline>
        <fo:inline xsl:use-attribute-sets="cv.data.enddate">
            <xsl:choose>
                <xsl:when test="exists(./following-sibling::*[contains(@class,' topic/data ')][@name='enddate'])">
                    <xsl:value-of select="./following-sibling::*[contains(@class,' topic/data ')][@name='enddate']/@value"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>(present)</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </fo:inline>
    </xsl:template>
    <xsl:template match="*[contains(@class,' topic/data ')][@name='enddate']"/>
    <xsl:template match="*[contains(@class,' topic/data ')][@name='enddate'][not(preceding-sibling::*[contains(@class,' topic/data ')][@name='startdate'])]" priority="1">
        <fo:inline xsl:use-attribute-sets="cv.data.enddate">
            <xsl:value-of select="@value"/>
        </fo:inline>
    </xsl:template>
</xsl:stylesheet>