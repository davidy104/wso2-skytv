<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://process.skytv.co.nz/puborc-medianotification/v1"
	xmlns:ns2="http://model.skytv.co.nz/media-notification/v1">
	<xsl:template match="/ns1:HandleNotificationRequest">
		<xsl:element name="GetVodMediaMetadata" xmlns="http://service.skytv.co.nz/ibms/v1">
			<xsl:element name="mediaID">
				<xsl:value-of select="ns2:Notification/ns2:mediaID" />
			</xsl:element>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>