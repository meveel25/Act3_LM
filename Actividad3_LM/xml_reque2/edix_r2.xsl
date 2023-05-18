<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">	
		<html>
            <xsl:value-of select="/ite/empresa/informacion" />
            <br/>
            <br/>
            <xsl:value-of select="/ite/formacion/grados_superiores"/>
        </html>
	</xsl:template>
</xsl:stylesheet>