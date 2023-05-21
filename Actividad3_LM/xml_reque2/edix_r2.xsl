<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/ite">	
        <intituto>
            <empresa>
                <xsl:value-of select="empresa"/>
                 <telefono>
                     <xsl:value-of select="telefono"/>
                 </telefono>
            </empresa>
            
        <personal>
            <profesorado>
                <xsl:for-each select="profesores/profesor">
                    <profesor>
                        <id>
                            <xsl:value-of select="id"/>
                        </id>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>
                    </profesor>
                </xsl:for-each>
            </profesorado>
            <direccion_centro>
                <director>
                    <nombre>
                        <xsl:value-of select="director/nombre"/>
                    </nombre>
                    <despacho>
                        <xsl:value-of select="director/despacho"/>
                    </despacho>
                </director>
                
                <jefe_estudios>
                    <nombre>
                        <xsl:value-of select="jefe_estudios/nombre"/>
                    </nombre>
                    <despacho>
                        <xsl:value-of select="jefe_estudios/despacho"/>
                    </despacho>
                </jefe_estudios>
            </direccion_centro>
        </personal>
            <grados>
                <xsl:for-each select="ciclos/ciclo">
                    <ciclo id="@id">
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>
                        <grado>
                            <xsl:value-of select="grado"/>
                        </grado>
                        <decretoTitulo select="decretoTitulo/@año"/>
                    </ciclo>
                </xsl:for-each>
            </grados>
        </intituto>
    </xsl:template>
</xsl:stylesheet>