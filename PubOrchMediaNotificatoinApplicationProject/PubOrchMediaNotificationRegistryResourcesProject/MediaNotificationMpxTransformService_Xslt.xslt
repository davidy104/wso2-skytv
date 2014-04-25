<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="ns2 ns3"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://service.skytv.co.nz/puborch-transform/v1"
	xmlns:ns2="http://model.skytv.co.nz/vod/v1" xmlns:ns3="http://model.skytv.co.nz/puborch-productiondef/v1"
	xmlns:sky="http://xml.theplatform.com/media/data/sky" xmlns:media="http://search.yahoo.com/mrss/"
	xmlns:plfile="http://xml.theplatform.com/media/data/MediaFile"
	xmlns:plingestmf="http://xml.theplatform.com/ingest/data/IngestMediaFile">

	<xsl:output method="xml" version="1.0" encoding="UTF-8"
		indent="yes" />

	<xsl:template match="/">
		<xsl:element name="ns1:TransformResponse">
			<xsl:apply-templates select="ns1:TransformRequest/source" />
		</xsl:element>
	</xsl:template>

	<xsl:template match="source">
		<rss version="2.0" xmlns:sky="http://xml.theplatform.com/media/data/sky"
			xmlns:media="http://search.yahoo.com/mrss/" xmlns:plfile="http://xml.theplatform.com/media/data/MediaFile"
			xmlns:plingestmf="http://xml.theplatform.com/ingest/data/IngestMediaFile">
			<channel>
				<item>
					<guid isPermaLink="false">
						<xsl:value-of select="ns2:Media/ns2:guid" />
					</guid>
					<title>
						<xsl:value-of select="ns2:Media/ns2:titleName" />
					</title>

					<sky:mediaId>
						<xsl:value-of select="ns2:Media/ns2:mediaId" />
					</sky:mediaId>

					<media:rating scheme="urn:sky:ibms">
						<xsl:value-of select="ns2:Media/ns2:certification" />
					</media:rating>

					<sky:advisory>
					</sky:advisory>

					<sky:audioType>
						<xsl:value-of select="ns2:Media/ns2:audioType" />
					</sky:audioType>


					<media:group>
						<xsl:for-each select="videos/ns3:assetType">
							<media:content medium="{ns3:mediaType}" url="{ns3:url}">
								<plfile:assetType>
									<xsl:value-of select="ns3:description" />
								</plfile:assetType>
								<plingestmf:deleted>false</plingestmf:deleted>
							</media:content>
						</xsl:for-each>
					</media:group>
				</item>
			</channel>
		</rss>
	</xsl:template>
</xsl:stylesheet>