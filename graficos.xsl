<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg">

  <xsl:output
     method="xml"
     indent="yes"
     standalone="no"
     doctype-public="-//W3C//DTD SVG 1.1//EN"
     doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"
     media-type="image/svg" />
  <xsl:template match="rutasTuristicas">
    <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" >
        <xsl:for-each select="rutaTuristica">
          <chart type="bar">
            <labels>
              <xsl:value-of select="hitos/hito/@nombre"/>
            </labels>
            <data>
              <xsl:value-of select="/hitos/hito/coordenadas/altitud"/>
            </data>
          </chart>
        </xsl:for-each>
		<xsl:apply-templates/>
	</svg>
  </xsl:template>
</xsl:stylesheet>



