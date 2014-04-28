<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="ns2"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:date="http://exslt.org/dates-and-times"
	extension-element-prefixes="date"
	xmlns:ns2="http://service.skytv.co.nz/puborch-transform/v1">

	<xsl:variable name="currenttime" select="current-dateTime()" />
	<xsl:variable name="formatcurrenttime"
		select="format-dateTime($currenttime,'[D01][M01][Y0001]_[H01][m01][s01]')" />

	<xsl:template match="ns2:TransformResponse">
		<xsl:element name="ns1:SendToFileServiceRequest"
			xmlns:ns1="https://service.skytv.co.nz/puborch-fileService/v1">
			<fileName>
				<xsl:value-of select="concat(concat('Stub_',$formatcurrenttime),'.xml')" />
			</fileName>
			<destination>FTP</destination>
			<contents>
				<xsl:copy-of select="node()"
					xmlns:sky="http://xml.theplatform.com/media/data/sky" />
			</contents>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>