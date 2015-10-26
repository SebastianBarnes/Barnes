<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
	  <link href="smash.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<h2> Melee it On Me's Top 25<br/>Super Smash Brothers Melee 2014 </h2>
	<table border="1">
		<tr>
			<th>Rank</th>
			<th>Gamer Tag</th>
			<th>Name</th>
			<th>Region</th>
			<th>Characters</th>
			<th>1st Place</th>
			<th>2nd Place</th>
			<th>3rd Place</th>
			<th>Notable Placings</th>
		</tr>
			<xsl:for-each select="player_list/player">
			<tr>
				<td class="miom"><xsl:value-of select="miom_rank"/></td>
				<td><xsl:value-of select="gamertag"/></td>
				<td><xsl:value-of select="realname"/></td>
				<td><xsl:value-of select="region"/></td>
				<td><xsl:for-each select="characters_played/character">
					<ul><li><xsl:value-of select="."/></li></ul>
					</xsl:for-each></td>
				<td><xsl:for-each select="placings/first_place/first">
					<ul><li><xsl:value-of select="."/></li></ul>
					</xsl:for-each></td>
				<td><xsl:for-each select="placings/second_place/second">
					<ul><li><xsl:value-of select="."/></li></ul>
					</xsl:for-each></td>
				<td><xsl:for-each select="placings/third_place/third">
					<ul><li><xsl:value-of select="."/></li></ul>
					</xsl:for-each></td>
				<td><xsl:for-each select="placings/other_place/other">
					<ul><li><xsl:value-of select="."/></li></ul>
				</xsl:for-each></td>
			</tr>
			</xsl:for-each>
	</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>