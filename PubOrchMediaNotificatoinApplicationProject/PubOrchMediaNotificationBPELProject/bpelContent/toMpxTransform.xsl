<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="ns5 ns6"
	xmlns:ns5="http://service.skytv.co.nz/puborch-productdef/v1" xmlns:ns6="http://model.skytv.co.nz/puborch-productiondef/v1"
	xmlns:ns7="http://service.skytv.co.nz/ibms/v1" xmlns:ns8="http://model.skytv.co.nz/vod/v1">

	<xsl:output method="xml" />
	<xsl:param name="vodMediaMetadata" />

	<xsl:template match="/">
		<ns1:TransformRequest
			xmlns:ns1="http://service.skytv.co.nz/puborch-transform/v1"
			xmlns:ns2="http://model.skytv.co.nz/vod/v1" xmlns:ns3="http://model.skytv.co.nz/puborch-productiondef/v1">
			<xsl:element name="fromType">
				SKY
			</xsl:element>
			<xsl:element name="toType">
				MPXMEDIA
			</xsl:element>

			<xsl:element name="source">
				<xsl:element name="ns2:Media" xmlns:ns2="http://model.skytv.co.nz/vod/v1">
					<xsl:element name="ns2:guid">

					</xsl:element>
					<xsl:element name="ns2:titleId">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:titleId" />
					</xsl:element>
					<xsl:element name="ns2:titleName">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:titleName" />
					</xsl:element>
					<xsl:element name="ns2:certification">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:certification" />
					</xsl:element>
					<xsl:element name="ns2:duration">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:duration" />
					</xsl:element>
					<xsl:element name="ns2:audioType">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:audioType" />
					</xsl:element>
					<xsl:element name="ns2:aspectRatio">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:aspectRatio" />
					</xsl:element>
					<xsl:element name="ns2:screenFormat">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:screenFormat" />
					</xsl:element>
					<xsl:element name="ns2:mediaId">
						<xsl:value-of select="$vodMediaMetadata/ns8:Media/ns8:mediaId" />
					</xsl:element>

				</xsl:element>

				<xsl:element name="videos">
					<xsl:for-each select="ns5:GetVideoTypesResponse/ns6:assetType">
						<xsl:element name="ns3:assetType">
							<xsl:element name="ns3:assetTypeId">
								<xsl:value-of select="ns6:assetTypeId" />
							</xsl:element>
							<xsl:element name="ns3:description">
								<xsl:value-of select="ns6:description" />
							</xsl:element>
							<xsl:element name="ns3:mediaType">
								<xsl:value-of select="ns6:mediaType" />
							</xsl:element>
							<xsl:element name="ns3:details">
								<xsl:value-of select="ns6:details" />
							</xsl:element>
							<xsl:element name="ns3:url">
								<xsl:value-of select="ns6:url" />
							</xsl:element>
						</xsl:element>
					</xsl:for-each>
				</xsl:element>
			</xsl:element>
		</ns1:TransformRequest>
	</xsl:template>

</xsl:stylesheet>