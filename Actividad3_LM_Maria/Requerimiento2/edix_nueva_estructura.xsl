<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/ite">

        <instituto>

            <xsl:attribute name="web">

                <xsl:value-of select="@web"/>

            </xsl:attribute>

            <datos>

                <nombre><xsl:value-of select="@nombre"/></nombre>

                <telf><xsl:value-of select="telefono"/></telf>

                <empresa><xsl:value-of select="empresa"/></empresa>

            </datos>

            <personal>

                <profesores>

                    <xsl:for-each select="profesores/profesor">

                        <profesor>

                            <xsl:attribute name="id">
                        
                                <xsl:value-of select="id"/>

                            </xsl:attribute>

                            <nombre><xsl:value-of select="nombre"/></nombre>

                        </profesor> 

                    </xsl:for-each>

                </profesores>

                <director>

                    <nombre><xsl:value-of select="director/nombre"/></nombre>

                    <ubi_despacho><xsl:value-of select="director/despacho"/></ubi_despacho>

                </director>

                <jefe_estudios>

                    <nombre><xsl:value-of select="jefe_estudios/nombre"/></nombre>

                    <ubi_despacho><xsl:value-of select="jefe_estudios/despacho"/></ubi_despacho>

                </jefe_estudios>

            </personal>

            <grados>
        
                <xsl:for-each select="ciclos/ciclo">

                    <grado>
                    
                        <xsl:attribute name="id">
                        
                            <xsl:value-of select="@id"/>
                        
                        </xsl:attribute>

                        <xsl:attribute name="año_grado">
                        
                            <xsl:value-of select="decretoTitulo/@año"/>
                        
                        </xsl:attribute>

                        <nombre><xsl:value-of select="nombre"/></nombre>

                        <tipo><xsl:value-of select="grado"/></tipo>

                    </grado>

                </xsl:for-each>
        
            </grados>

        </instituto>

    </xsl:template>

</xsl:stylesheet>