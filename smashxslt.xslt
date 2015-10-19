<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
	  <link href="xsl.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<h2> Smash Brother Top 50</h2>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Gamer Tag</th>
			<th>Characters</th>
			<th>2014 MIOM Rank</th>
			<th>1st Place</th>
			<th>2nd Place</th>
			<th>3rd Place</th>
			<th>Win/Loss vs Mango</th>
			<th>Win/Loss vs Armada </th>
			<th>Win/Loss vs Hungrybox</th>
			<th>Win/Loss vs Leffen</th>
			<th>Win/Loss vs PPMD</th>
			<th>Win/Loss vs Mew2King</th>
		</tr>
			<xsl:for-each select="player_list/player">
			<tr>
				<td><xsl:value-of select="realname"/></td>
				<td><xsl:value-of select="gamertag"/></td>
				<td><xsl:value-of select="characters_played"/></td>
				<td><xsl:value-of select="miom_rank"/></td>
				<td><xsl:for-each select="placings/first_place/first">
					<ul><li><xsl:value-of select="."/></li></ul>
					</xsl:for-each></td>
				<td><xsl:value-of select="second_place"/></td>
				<td><xsl:value-of select="third_place"/></td>
				<td><xsl:value-of select="winlossmango"/></td>
				<td><xsl:value-of select="winlossarmada"/></td>
				<td><xsl:value-of select="winlosshbox"/></td>
				<td><xsl:value-of select="winlossleffen"/></td>
				<td><xsl:value-of select="winlossPPMD"/></td>
				<td><xsl:value-of select="winlossm2k"/></td>
			</tr>
			</xsl:for-each>
	</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>