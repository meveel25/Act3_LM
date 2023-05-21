<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <instituto>
            <datos>
                <nombre><xsl:value-of select="ite/@nombre"/></nombre>
                <empresa><xsl:value-of select="ite/empresa"/></empresa>
                <telefono><xsl:value-of select="ite/telefono"/></telefono>
                <web><xsl:value-of select="ite/@web"/></web>
            </datos>
            <empleados>
                <maestros>
                    <xsl:for-each select="ite/profesores/profesor">
                        <maestro>
                            <xsl:attribute name="id">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="nombre"/></nombre>
                        </maestro>
                    </xsl:for-each>
                </maestros>
                <directivos>
                    <director>
                        <xsl:attribute name="despacho">
                            <xsl:value-of select="ite/director/despacho"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
                    </director>
                    <jefeEstudios>
                        <xsl:attribute name="despacho">
                            <xsl:value-of select="ite/jefe_estudios/despacho"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                    </jefeEstudios>
                </directivos>
            </empleados>
            <grados>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <grado>
                        <xsl:attribute name="tipo">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                        <xsl:attribute name="decreto">
                            <xsl:value-of select="decretoTitulo/@año"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                        <abreviatura><xsl:value-of select="@id"/></abreviatura>
                    </grado>
                </xsl:for-each>
            </grados>
        </instituto>
    </xsl:template>
</xsl:stylesheet>