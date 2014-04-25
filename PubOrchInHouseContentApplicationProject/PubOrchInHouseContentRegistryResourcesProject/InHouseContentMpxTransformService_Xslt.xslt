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
					<description>
						<xsl:value-of select="ns2:Title/ns2:synopsis" />
					</description>

					<media:category scheme="urn:sky:ibms:genre"></media:category>
					<media:category scheme="urn:sky:ibms:genre"></media:category>
					<media:keywords></media:keywords>

					<sky:inHouse>true</sky:inHouse>

					<sky:mediaId>
						<xsl:value-of select="ns2:Media/ns2:mediaID" />
					</sky:mediaId>
					<sky:programType>
						<xsl:value-of select="ns2:Title/ns2:type" />
					</sky:programType>
					<sky:studio>
						<xsl:value-of select="ns2:Title/ns2:distributor" />
					</sky:studio>
					<sky:contentProviderId>
						<xsl:value-of select="ns2:Title/ns2:contentProviderId" />
					</sky:contentProviderId>
					<sky:state>
						<xsl:value-of select="ns2:Title/ns2:state" />
					</sky:state>

					<media:rating scheme="urn:sky:ibms">
						<xsl:value-of select="ns2:Media/ns2:certification" />
					</media:rating>
					<sky:advisory></sky:advisory>

					<sky:seriesId>
						<xsl:value-of select="ns2:Title/ns2:seriesId" />
					</sky:seriesId>
					<sky:seriesTitle>
						<xsl:value-of select="ns2:Title/ns2:seriesName" />
					</sky:seriesTitle>
					<sky:seriesDescription>
						<xsl:value-of select="ns2:Title/ns2:synopsis" />
					</sky:seriesDescription>

					<sky:seasonId>
						<xsl:value-of select="ns2:Title/ns2:seriesId" />
					</sky:seasonId>
					<sky:seasonNumber>
						<xsl:value-of select="ns2:Title/ns2:seriesYear" />
					</sky:seasonNumber>
					<sky:seasonTitle>
						<xsl:value-of
							select="concat(ns2:Title/ns2:seriesName, ' ', ns2:Title/ns2:seriesYear)" />
					</sky:seasonTitle>
					<sky:seasonDescription>
						<xsl:value-of select="ns2:Title/ns2:synopsis" />
					</sky:seasonDescription>

					<sky:episodeNumber>
						<xsl:value-of select="ns2:Title/ns2:episodeNumber" />
					</sky:episodeNumber>
					<sky:releaseYear>
						<xsl:value-of select="ns2:Title/ns2:yearOfProduction" />
					</sky:releaseYear>

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