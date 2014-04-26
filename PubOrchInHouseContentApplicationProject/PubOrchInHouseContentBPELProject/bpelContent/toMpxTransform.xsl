<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="ns5 ns7"
	xmlns:ns5="http://service.skytv.co.nz/media-notification/v1" xmlns:ns7="http://service.skytv.co.nz/ibms/v1"
	xmlns:ns8="http://model.skytv.co.nz/vod/v1">

	<xsl:output method="xml" />
	<xsl:param name="vodMediaMetadata" />

	<xsl:template match="/">
		<ns1:TransformRequest
			xmlns:ns1="http://service.skytv.co.nz/puborch-transform/v1"
			xmlns:ns2="http://model.skytv.co.nz/vod/v1">
			<xsl:element name="fromType">
				SKY
			</xsl:element>
			<xsl:element name="toType">
				MPXINHOUSE
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

				<xsl:element name="ns2:Title" xmlns:ns2="http://model.skytv.co.nz/vod/v1">
					<xsl:element name="ns2:titleId">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:titleId" />
					</xsl:element>
					<xsl:element name="ns2:title">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:title" />
					</xsl:element>
					<xsl:element name="ns2:episodeNumber">
						<xsl:value-of
							select="ns7:GetVodTitleResponse/ns8:Title/ns8:episodeNumber" />
					</xsl:element>
					<xsl:element name="ns2:yearOfProduction">
						<xsl:value-of
							select="ns7:GetVodTitleResponse/ns8:Title/ns8:yearOfProduction" />
					</xsl:element>
					<xsl:element name="ns2:type">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:type" />
					</xsl:element>
					<xsl:element name="ns2:distributor">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:distributor" />
					</xsl:element>
					<xsl:element name="ns2:contentProviderId">
						<xsl:value-of
							select="ns7:GetVodTitleResponse/ns8:Title/ns8:contentProviderId" />
					</xsl:element>
					<xsl:element name="ns2:state">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:state" />
					</xsl:element>
					<xsl:element name="ns2:seriesId">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:seriesId" />
					</xsl:element>
					<xsl:element name="ns2:seriesName">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:seriesName" />
					</xsl:element>
					<xsl:element name="ns2:seriesYear">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:seriesYear" />
					</xsl:element>
					<xsl:element name="ns2:synopsis">
						<xsl:value-of select="ns7:GetVodTitleResponse/ns8:Title/ns8:synopsis" />
					</xsl:element>
					<xsl:element name="ns2:lastUpdateDate">
						<xsl:value-of
							select="ns7:GetVodTitleResponse/ns8:Title/ns8:lastUpdateDate" />
					</xsl:element>

				</xsl:element>
			</xsl:element>
		</ns1:TransformRequest>
	</xsl:template>

</xsl:stylesheet>