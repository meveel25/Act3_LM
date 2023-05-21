<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="ite/@nombre"/></title>
                <link rel="stylesheet" href="ite.css"/>
            </head>
            <body class="fondo">
                <h1><xsl:value-of select="ite/@nombre"/></h1>
                <h2>Datos de la empresa</h2>
                <ul>
                    <li><p><span class="negrita">Nombre: </span><xsl:value-of select="ite/empresa"/></p></li>
                    <li><p><span class="negrita">Teléfono: </span><xsl:value-of select="ite/telefono"/></p></li>
                    <li><p><span class="negrita">Página web: </span><a href="{ite/@web}"><xsl:value-of select="ite/@web"/></a></p></li>
                </ul>
                <br/>
                <h2>Profesores</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Asignatura</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="ite/profesores/profesor">
                            <tr>
                                <td><xsl:value-of select="id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <!-- Con un xsl:if dará un valor u otro según sea el elemento "nombre" -->
                                <td><xsl:if test="nombre='Félix'">Lenguajes de Marcas</xsl:if>
                                    <xsl:if test="nombre='Raúl'">Bases de Datos</xsl:if>
                                    <xsl:if test="nombre='Raquel'">Sistemas Informáticos</xsl:if>
                                    <xsl:if test="nombre='Tomás'">Programación</xsl:if>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <br/>
                <h2>Personal no docente</h2>
                <ol>
                    <li>
                        <p><span class="negrita">Nombre: </span><xsl:value-of select="ite/director/nombre"/></p>
                        <p><span class="negrita">Cargo: </span>Directora</p>
                        <p><span class="negrita">Despacho: </span><xsl:value-of select="ite/director/despacho"/></p>
                    </li>
                    <li>
                        <p><span class="negrita">Nombre: </span><xsl:value-of select="ite/jefe_estudios/nombre"/></p>
                        <p><span class="negrita">Cargo: </span>Jefe de estudios</p>
                        <p><span class="negrita">Despacho: </span><xsl:value-of select="ite/jefe_estudios/despacho"/></p>
                    </li>
                </ol>
                <br/>
                <h2>Grados impartidos</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Tipo de grado</th>
                            <th>Decreto título</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="ite/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <br/>
                <h2>Formulario de contacto</h2>
                <form action="procesar_peticion.jsp" method="post">
                    <fieldset><legend>Datos personales</legend>
                        <br/>
                        <br/>
                        <label for="nombre">Nombre:  </label>
                        <input id="nombre" type="text" name="nombre"/>
                        <br/>
                        <br/>
                        <label for="apellidos">Apellidos:  </label>
                        <input id="apellidos" type="text" name="apellidos"/>
                        <br/>
                        <br/>
                        <label for="telefono">Teléfono:  </label>
                        <input id="telefono" type="tel" name="telefono"/>
                        <br/>
                        <br/>
                        <label for="email">Correo electrónico:  </label>
                        <input id="email" name="email" type="email" placeholder="Escriba su email"/>
                        <br/>
                        <br/>
                        <label for="fechanacimiento">Fecha de nacimiento:  </label>
                        <input id="fechanacimiento" type="date" name="fechanacimiento"/>
                        <br/>
                        <br/>
                        <p id="tipogrado">¿En qué grados estarías interesado?</p>
                        <label for="ciclo"></label>
                        <br/>
                        <input id="ciclo" type="checkbox" name="ciclo" value="1"/><xsl:value-of select="/ite/ciclos/ciclo[1]/nombre"/>
                        <br/>
                        <br/>
                        <input id="ciclo" type="checkbox" name="ciclo" value="2"/><xsl:value-of select="/ite/ciclos/ciclo[2]/nombre"/>
                        <br/>
                        <br/>
                        <input id="ciclo" type="checkbox" name="ciclo" value="3"/><xsl:value-of select="/ite/ciclos/ciclo[3]/nombre"/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <label>Enviar formulario:   </label>
                        <input id="enviar" type="submit" value=" Enviar Datos "/>
                        <input id="limpiar" type="reset" value=" Limpiar Formulario "/> 
                        <br/>
                        <br/>
                    </fieldset>
                </form>
                <footer>
                    <a class="edix" href="{ite/@web}"><img src="imagenes/edix-formacion.png"></img></a>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>