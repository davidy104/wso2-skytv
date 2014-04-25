<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="ns3" xmlns:ns3="http://process.skytv.co.nz/puborc-medianotification/v1" xmlns:ns2="http://model.skytv.co.nz/media-notification/v1"
	xmlns:ns1="http://service.skytv.co.nz/pig-medianotification/v1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

	<xsl:template match="ns2:Notification">
		<xsl:element name="ns1:NotifyRequest" xmlns:ns1="http://service.skytv.co.nz/pig-medianotification/v1">
			<xsl:element name="ns2:Notification" xmlns:ns2="http://model.skytv.co.nz/media-notification/v1">
				<xsl:element name="ns2:time">
					<xsl:value-of select="ns2:time" />
				</xsl:element>
				<xsl:element name="ns2:state">
					<xsl:value-of select="ns2:state" />
				</xsl:element>
				<xsl:element name="ns2:mediaID">
					<xsl:value-of select="ns2:mediaID" />
				</xsl:element>
				<xsl:element name="ns2:guid">
					<xsl:value-of select="ns2:guid" />
				</xsl:element>
			</xsl:element>
		</xsl:element>

	</xsl:template>
</xsl:stylesheet>