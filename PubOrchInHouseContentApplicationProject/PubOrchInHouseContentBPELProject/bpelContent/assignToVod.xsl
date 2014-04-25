<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="ns2"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://model.skytv.co.nz/vod/v1"
	xmlns="http://service.skytv.co.nz/ibms/v1">

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>