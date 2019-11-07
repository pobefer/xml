<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="rutasTuristicas">
    <kml xmlns="http://www.opengis.net/kml/2.2">
      <Document>
        <Placemark>
          <name>test</name>
          <description>test Desc</description>
          <Style>
            <LineStyle>
              <color>7f0000ff</color>
              <width>8</width>
            </LineStyle>
          </Style>
          <LineString>
            <tessellate>1</tessellate>
            <altitudeMode>relativeToGround</altitudeMode>
            <coordinates>
              <xsl:for-each select="rutaTuristica">
                <xsl:for-each select="hitos/hito">
                  <xsl:value-of select="coordenadas/latitud"/> , <xsl:value-of select="coordenadas/longitud"/>
                </xsl:for-each>
              </xsl:for-each>
            </coordinates>
          </LineString>
        </Placemark>
      </Document>
    </kml>
  </xsl:template>
</xsl:stylesheet>


