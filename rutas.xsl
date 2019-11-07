<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
		<xsl:template match="rutasTuristicas">
				<html>
						<body>
							<xsl:for-each select="rutaTuristica">
									<h1>
										<xsl:value-of select="@nombre"/>
									</h1>
									<p>
										Tipo : <xsl:value-of select="@tipo"/>
									</p>
									<p>
										Medio Transporte : <xsl:value-of select="medio-transporte"/>
									</p>
									<p>
										Fecha de inicio de la ruta : <xsl:value-of select="fecha-inicio"/>
									</p>
									<p>
										Fecha de fin de la ruta : <xsl:value-of select="fecha-fin"/>
									</p>
									<p>
										Duracion de la ruta : <xsl:value-of select="tiempo-duracion"/>
									</p>
									<p>
										Agencia : <xsl:value-of select="Agencia"/>
									</p>
									<p>
										Descripcion de la ruta : <xsl:value-of select="descripcion"/>
									</p>
									<p>
										Personas adecuadas : 
									</p>
									<xsl:for-each select="persona-adecuadas/persona">
										<p>
											<xsl:value-of select="." />
											<xsl:text> </xsl:text>
										</p>
									</xsl:for-each>
									<p>
										Lugar de inicio : <xsl:value-of select="lugar-inicio"/> <p></p> <xsl:value-of select="direccion-inicio"/>
									</p>
									<p>
										Coordenadas : <xsl:value-of select="coordenadas/latitud"/> , <xsl:value-of select="coordenadas/longitud"/>, <xsl:value-of select="coordenadas/altura"/>
									</p>
									<p>
										Referencias :
									</p>
									<xsl:for-each select="referencias/referencia">
										<p>
										<xsl:value-of select="." />
										<xsl:text> </xsl:text>
										</p>
									</xsl:for-each>
									<p>
										Recomendacion : <xsl:value-of select="recomendacion"/> 
									</p>
								<xsl:for-each select="hitos/hito">
									<p>
										Ruta : <xsl:value-of select="@nombre"/>
									</p>
									<p>
										Descripcion del hito : <xsl:value-of select="descripcion"/>
									</p>
									<p>
										Coordenadas : <xsl:value-of select="coordenadas/latitud"/> , <xsl:value-of select="coordenadas/longitud"/>, <xsl:value-of select="coordenadas/altura"/>
									</p>
									<p>
										Distancia al hito anterior : <xsl:value-of select="distancia-anterior"/>
									</p>
									<xsl:for-each select="galeria-img/img">
										<img>
											<xsl:attribute name="src">
												<xsl:value-of select="." />
											</xsl:attribute>
										</img>
									</xsl:for-each>
									<xsl:for-each select="galeria-video/video">
										<p>
											<xsl:value-of select="." />
											<xsl:text> </xsl:text>
										</p>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</body>
				</html>
				</xsl:template>
		</xsl:stylesheet>