<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
	</head>
	<body>
    <xsl:for-each select="librairie/livre">		
	    <H1>
            <xsl:value-of select="titre"/>
        </H1>
        <img>
            <xsl:attribute name="src"><xsl:value-of select="couverture"/></xsl:attribute>
            <xsl:attribute name="alt">photo</xsl:attribute>
        </img>
    </xsl:for-each>
	</table>
	</body>
	</html>
</xsl:template>	

<xsl:template match="/">
	<ul>
		<xsl:for-each "librairie/livre">
		<li>
			<a href="www.#{auteurs}.fr"><xsl:value-of select="auteurs"/></a>
		</li>
		</xsl:for-each> 
	</ul>
</xsl:template>


<xsl:template match="/">
	<html><head>	</head><body>
	<ol>
		<xsl:for-each select="librairie/livre">
		<xsl:if test="livre/@genre='auteur'">
		<h1><xsl:value-of select="auteur"/></h1>
		<li>
			<xsl:value-of select="titre"/>
		</li>
		</xsl:if>
		</xsl:for-each> 
	</ol>
	</body>
	</html>
</xsl:template>

<xsl:template match="/">
	<H1>Annuaire</H1>
	<table border="1">
		<tr>
			<th>titre</th>
			<th>auteurs</th>
			<th>Image de couverture</th>
		</tr>
		<xsl:for-each select="librairie/livre">
			<tr>
				<td><xsl:value-of select="titre"/></td>
				<td><xsl:value-of select="couverture"/></td>
				<td><xsl:value-of select="auteurs"/></td>
			</tr>
		</xsl:for-each>

</xsl:template>		

<xsl:template match="/">
	<body>		
	<H1>Annuaire</H1>
	<table border="1">
		<tr>
			<th>auteurs</th>
			<th>titre</th>
		</tr>
		<xsl:for-each select="librairie/livre">
		      <xsl:sort select="auteurs"/>
			<tr>
				<td><xsl:value-of select="auteurs"/></td>
				<xsl:if test="auteurs">
					<td><xsl:value-of select="titre"/></td>
				</xsl:if>
			</tr>
		</xsl:for-each>
	</table>
</xsl:template>		

</xsl:stylesheet>
