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
    <div class="outer">
      <div style="text-align: left; margin-bottom: 15px">
	<span class="scheduleTitle" style="width: 12%; float: left">Date</span>
	<span class="scheduleTitle" style="width: 48%; float: left">Paper</span>
	<span class="scheduleTitle" style="width: 20%; float: left">Presenter</span>
	<span class="scheduleTitle" style="width: 20%; float: right">Discussant</span>
      </div>
      <xsl:for-each select="schedule/presentation">
	<div style="text-align: left">
	  <span style="width: 12%; float: left"><xsl:value-of select="date"/></span>
	  <xsl:choose>
	    <xsl:when test="paper/cite">
	    <span style="width: 48%; float: left"><a class="body" href="{paper/file}" target="_top"><xsl:value-of select="paper/cite"/></a></span>
	    </xsl:when>
            <xsl:otherwise>
	      <span style="width: 48%; float: left"><xsl:value-of select="paper/title"/></span>
            </xsl:otherwise>
	  </xsl:choose>
	  <span style="width: 20%; float: left"><xsl:value-of select="presenter"/></span>
	  <span style="width: 20%; float: right"><xsl:value-of select="discussant"/></span>
	</div>
      </xsl:for-each>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
