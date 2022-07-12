<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/librairie">
	<html><head>	</head><body>
	<ul>
		<xsl:for-each "librairie/livre">
			<xsl:value-of select="livre/@theme" />
            <xsl:choose>
                <xsl:when test="@recompense='Renaudot' or 'Femina'">
                    <li><span style="text-decoration: underline;"><xsl:value-of select="titre"/></span></li>                    
                </xsl:when>
                    <li><xsl:value-of select="titre"/></li>
            </xsl:choose>
		</xsl:for-each> 
	</ul>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>
