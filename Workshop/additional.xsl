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
    <div class="outer" style="width: 700px">
      <xsl:for-each select="list/paper">
	<div style="text-align: left">
	  <span><xsl:value-of select="cite"/>: </span>
	  <span><a class="body" href="{file}" target="_top"><xsl:value-of select="title"/></a></span>
	</div>
      </xsl:for-each>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
