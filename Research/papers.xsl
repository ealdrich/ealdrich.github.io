<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <title>Eric Aldrich</title>
    <link rel="stylesheet" type="text/css" href="/~ealdrich/style.css" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Varela|News+Cycle|Droid+Serif|Georgia" />
  </head>
  <body>
    <div style="text-align: left; margin-left: 40px">
      <xsl:for-each select="papers/pubtype">
        <div id="section">
          <xsl:value-of select="value"/>
        </div>
        <xsl:for-each select="paper">
          <div style="margin-bottom: .25in; margin-left: 30px">
	    <span><a class="body" href="{@link}" target="_top"><xsl:value-of select="title"/></a></span>
	    <xsl:if test="coauthor">
	      <xsl:for-each select="coauthor">
		<xsl:if test="position()=1 and last='no'">
		  <span style="margin-left: 4px">(with <a class="body" href="{@colink}" target="_top"><xsl:value-of select="name"/></a></span>
		</xsl:if>
		<xsl:if test="position()=1 and last='yes'">
		  <span  style="margin-left: 4px">(with <a class="body" href="{@colink}" target="_top"><xsl:value-of select="name"/></a>)</span>
		</xsl:if>
		<xsl:if test="position()>1 and last='no'">
		  <span>, <a class="body" href="{@colink}" target="_top"><xsl:value-of select="name"/></a></span>
		</xsl:if>
		<xsl:if test="position()>1 and last='yes'">
		  <span> and <a class="body" href="{@colink}" target="_top"><xsl:value-of select="name"/></a>)</span>
		</xsl:if>
              </xsl:for-each>
	    </xsl:if>
	    <xsl:if test="journal">
	      <span style="margin-left: 4px; font-style: italic"><xsl:value-of select="journal"/>,</span>
	    </xsl:if>
	    <xsl:if test="other">
	      <span style="margin-left: 4px"><xsl:value-of select="other"/>,</span>
	    </xsl:if>
	    <span style="margin-left: 4px"><xsl:value-of select="year"/>.</span>
          </div>
        </xsl:for-each>
      </xsl:for-each>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
