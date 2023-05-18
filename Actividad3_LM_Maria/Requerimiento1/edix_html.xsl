<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/ite">
    <html>
        <head>
            <title><xsl:value-of select="@nombre"/></title>
            <link rel="stylesheet" href="edix.css"/>
        </head>
        <body>
            <h1><a href="{@web}" title="Instituto Tecnológico Edix"><xsl:value-of select="@nombre"/></a></h1>
            <ul>
                <li id="profes">
                    <h3>Profesores</h3>
                    <ol>
                        <xsl:for-each select="profesores/profesor">
                           <li><xsl:value-of select="nombre"/></li>
                        </xsl:for-each>
                    </ol>
                </li>
                <li id="resto_claustro">
                    <h3>Resto del Claustro</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Cargo</th> 
                                <th>Despacho</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="director | jefe_estudios">
                                <tr>
                                    <td><xsl:value-of select="nombre"/></td>
                                    <xsl:choose>
                                        <xsl:when test="nombre='Chon'"><td>Directora</td></xsl:when>
                                        <xsl:when test="nombre='Dani'"><td>Jefe de estudios</td></xsl:when>
                                    </xsl:choose>
                                    <td><xsl:value-of select="despacho"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </li>
                <li id="ciclos">
                    <h3>Ciclos</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>Nombre del ciclo</th>
                                <th>Tipo de grado</th>
                                <th>Año de la primera promoción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="ciclos/ciclo">
                                <tr>
                                    <td><xsl:value-of select="nombre"/>
                                        <xsl:choose>
                                            <xsl:when test="@id='ASIR'"> (<a href="https://unirfp.unir.net/ingenieria/fp-grado-asir/" title="ASIR"><xsl:value-of select="@id"></xsl:value-of></a>)</xsl:when> 
                                            <xsl:when test="@id='DAW'"> (<a href="https://unirfp.unir.net/ingenieria/fp-grado-daw-desarrollo-de-aplicaciones-web/" title="DAW"><xsl:value-of select="@id"></xsl:value-of></a>)</xsl:when>
                                            <xsl:when test="@id='DAM'"> (<a href="https://unirfp.unir.net/ingenieria/fp-grado-desarrollo-aplicaciones-multiplataforma-dam/" title="DAM"><xsl:value-of select="@id"></xsl:value-of></a>)</xsl:when>
                                        </xsl:choose>
                                    </td>
                                    <td><xsl:value-of select="grado"/></td>
                                    <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </li>
            </ul>
            <h4 id="contact">Si quieres contactar con nosotros (Empresa <xsl:value-of select="empresa"/>) puedes llamarnos al siguiente teléfono: <xsl:value-of select="telefono"/>.</h4>
            <h4>También puedes rellenar el siguiente formulario:</h4>
            <form action="procesar_peticion.jsp" method="post">
                <fieldset>
                    <div id="form1">
                        <label for="nombre">Nombre: </label>
                        <input id="nombre" type="text" name="nombre"/>
                        <label for="apellidos">Apellidos: </label>
                        <input id="apellidos" type="text" name="apellidos"/>
                    </div>
                    <div id= "form2">
                        <label for="telf">Teléfono: </label>
                        <input id="telf" type="tel" name="telf"/>
                        <label for="email">Email: </label>
                        <input id="email" type="email"/>
                    </div>
                    <br/>
                    <div>
                        <label for="contacto">Cómo prefieres que te contactemos:</label><br/>
                        <input type="radio" name="contacto" value="E"/>Email<br/>
                        <input type="radio" name="contacto" value="T"/>Teléfono<br/>
                    </div>
                    <div id="form3">
                        <label for="hora">¿Cuándo te viene bien que te contactemos?</label>
                        <select name="hora">
                            <option value="man">10:00 - 13:00</option>
                            <option value="med">13:00 - 17:00</option>
                            <option value="tar">17:00 - 20:00</option>
                        </select>
                    </div>
                    <br/>
                    <textarea style="resize:none" rows="10" cols="50" name="consulta" placeholder="Cuéntanos un poco acerca de tu consulta"></textarea>
                    <br/>
                    <div id="form4">
                        <input type="checkbox" name="acepto" value="S"/><label for="acepto">Acepto la <a href="https://unirfp.unir.net/politica-de-privacidad/" title="Politica de privacidad">política de privacidad</a> y el tratamiento de mis datos</label>
                    </div>
                    <br/>
                    <input id="enviar" type="submit" value="Enviar datos"/>
                    <input id="borrar" type="reset" value="Limpiar formulario"/>
                </fieldset>
            </form>
        </body>

    </html>
</xsl:template>
</xsl:stylesheet>