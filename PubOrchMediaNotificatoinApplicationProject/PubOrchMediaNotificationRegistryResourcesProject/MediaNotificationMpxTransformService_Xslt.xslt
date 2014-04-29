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

					<xsl:apply-templates select="ns2:Media/ns2:certification" />

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


	<xsl:template match="ns2:certification" name="letters">
		<xsl:param name="text" select="." />

		<xsl:if test="starts-with($text,'16') and string-length($text) &gt; 2">
			<xsl:param name="text1" select="substring($text,3)" />
			<xsl:if test="$text1 != ''">
				<xsl:variable name="letter" select="substring($text1, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text1"
						select="substring-after($text1, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if test="starts-with($text,'G') and string-length($text) &gt; 1">
			<xsl:param name="text2" select="substring($text,2)" />
			<xsl:if test="$text2 != ''">
				<xsl:variable name="letter" select="substring($text2, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text2"
						select="substring-after($text2, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if test="starts-with($text,'M') and string-length($text) &gt; 1">
			<xsl:param name="text3" select="substring($text,2)" />
			<xsl:if test="$text3 != ''">
				<xsl:variable name="letter" select="substring($text3, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text3"
						select="substring-after($text3, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if test="starts-with($text,'PG') and string-length($text) &gt; 2">
			<xsl:param name="text4" select="substring($text,3)" />
			<xsl:if test="$text4 != ''">
				<xsl:variable name="letter" select="substring($text4, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text4"
						select="substring-after($text4, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if
			test="starts-with($text,'18') and not(starts-with($text,'18+')) and string-length($text) &gt; 2">
			<xsl:param name="text5" select="substring($text,3)" />
			<xsl:if test="$text5 != ''">
				<xsl:variable name="letter" select="substring($text5, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text5"
						select="substring-after($text5, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if test="starts-with($text,'18+') and string-length($text) &gt; 3">
			<xsl:param name="text6" select="substring($text,4)" />
			<xsl:if test="$text6 != ''">
				<xsl:variable name="letter" select="substring($text6, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text6"
						select="substring-after($text6, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if
			test="starts-with($text,'R20') and not(starts-with($text,'R20+')) and string-length($text) &gt; 3">
			<xsl:param name="text7" select="substring($text,4)" />
			<xsl:if test="$text7 != ''">
				<xsl:variable name="letter" select="substring($text7, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text7"
						select="substring-after($text7, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if test="starts-with($text,'R20+') and string-length($text) &gt; 4">
			<xsl:param name="text8" select="substring($text,5)" />
			<xsl:if test="$text8 != ''">
				<xsl:variable name="letter" select="substring($text8, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text8"
						select="substring-after($text8, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if test="starts-with($text,'R Only') and string-length($text) &gt; 6">
			<xsl:param name="text9" select="substring($text,7)" />
			<xsl:if test="$text9 != ''">
				<xsl:variable name="letter" select="substring($text9, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text9"
						select="substring-after($text9, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if test="starts-with($text,'X Adult') and string-length($text) &gt; 7">
			<xsl:param name="text10" select="substring($text,8)" />
			<xsl:if test="$text10 != ''">
				<xsl:variable name="letter" select="substring($text10, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text10"
						select="substring-after($text10, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if
			test="starts-with($text,'XX Adult') and string-length($text) &gt; 8">
			<xsl:param name="text11" select="substring($text,9)" />
			<xsl:if test="$text11 != ''">
				<xsl:variable name="letter" select="substring($text11, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text11"
						select="substring-after($text11, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

		<xsl:if
			test="starts-with($text,'XXX Adult') and string-length($text) &gt; 9">
			<xsl:param name="text12" select="substring($text,10)" />
			<xsl:if test="$text12 != ''">
				<xsl:variable name="letter" select="substring($text12, 1, 1)" />
				<sky:advisory>
					<xsl:value-of select="$letter" />
				</sky:advisory>
				<xsl:call-template name="letters">
					<xsl:with-param name="text12"
						select="substring-after($text12, $letter)" />
				</xsl:call-template>
			</xsl:if>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>