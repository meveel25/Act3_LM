<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">	
		<html>
            <xsl:value-of select="/ite/empresa/informacion" />
        </html>
	</xsl:template>
</xsl:stylesheet>