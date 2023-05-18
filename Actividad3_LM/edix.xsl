<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Nos situamos en el nodo raíz -->
	<xsl:template match="/">	
		<html>
		<head>
			<title>Edix</title>
			<link rel="stylesheet" href="./css/edix.css"/>
		</head>
		<body>
			<header>
				<!-- cabecera normal-->
				<div class="imagen" id="cajaMargen">
					<h1>¡Hola! Somos Edix</h1>
					<p>
						Somos la escuela que crea a los profesionales digitales que necesitan las empresas. Estamos aquí para hacer tu Revolución Profesional.</p>
					<p> Formamos a Digital Workers. Lo hacemos a través de nuestra escuela de profesiones digitales y de Formación Profesional (FP) a distancia.</p>
					
				</div>
			</header>

			<nav class="cajaMenu">
			<!--menu pagina con lista desordenada-->
			
				<ul> <!--lista desordenada-->
					<li><a><xsl:value-of select="/ite/empresa" /></a>
						<ul>
						<li><a href="https://www.grupoproeduca.com/">Conocenos</a></li>
						</ul>
					</li>
					<li><a>Teléfono</a>
						<ul>
						<li><a><xsl:value-of select="/ite/telefono" /></a></li>
						</ul>
					</li>
					<li><a>Profesores</a>
						<!-- Menu desplegable-->
						<ul>    
							<li><a><xsl:value-of select="/ite/profesores/profesor/nombre" /></a></li>
							<li><a><xsl:value-of select="/ite/profesores/profesor[2]/nombre" /></a></li>
							<li><a><xsl:value-of select="/ite/profesores/profesor[3]/nombre" /></a></li>
							<li><a><xsl:value-of select="/ite/profesores/profesor[4]/nombre" /></a></li>
						</ul>
					</li>
			
					<li><a>Director</a>
						<!--menu desplegable>-->
						<ul>
							<li><a><xsl:value-of select="/ite/director/nombre" /></a></li>
						</ul>
					</li>

			
					<li><a>Jefe de estudios</a>
						<!--menu desplegable>-->
						<ul>
							<li><a><xsl:value-of select="/ite/jefe_estudios/nombre" /></a></li>
						</ul>   
					</li>
					<li><a>Ciclos</a></li>
				</ul>

			</nav>

			<article>
			<h1 class="margen">Llega tu Revolución Profesional</h1>
			<div class="cajaTexto" id="eslilosFuente">
				<p>
					Nacimos en 2019 con el objetivo de formar a las personas en oficios digitales y tecnológicas de alta demanda. Más de 1.200 alumnos han pasado por las aulas de nuestra escuela online de profesiones digitales y de FP a distancia. 
				</p>
				<p>
					Somos especialistas en formación online práctica. Antes de 2025 hay que formar a más de 2 millones de personas en habilidades tecnológicas y digitales, según un informe de LinkedIn. Según el Gobierno de España, nuestro país necesita más de 500.000 perfiles digitales en los próximos 3 años. La demanda no para de crecer, y sabemos que la receta clave es la formación y el reskilling (reciclaje). La transformación digital de una organización pasa por la transformación digital de las personas que la componen.
				</p>
				<p>
					Somos una compañía del Grupo Proeduca, líder mundial en formación online en habla hispana y promotor de UNIR, la Universidad en Internet, KSchool o la MIU City University Miami.
				</p>
			</div>
			   <nav class="caja">
        
        <table class="tabla" >
            <th id="estiloCelda">Profesores</th>
            <th id="estiloCelda">Asignaturas</th>
            <th id="estiloCelda">Horario</th>
            <tr>
                <td><xsl:value-of select="/ite/profesores/profesor/nombre" /></td>
                <td>Lenguaje Marcas</td>
                <td>Miercoles 18:00-19:00</td>
            </tr>
            <tr>
                <td><xsl:value-of select="/ite/profesores/profesor[2]/nombre" /></td>
                <td>Bases de Datos</td>
                <td>Miercoeles - Jueves 19:00-21:30</td>
           
            </tr>
            <tr>
                <td><xsl:value-of select="/ite/profesores/profesor[3]/nombre" /></td>
                <td>Sistemas Informáticos</td>
                <td>Lunes 18:00 - 19:00</td>
            </tr>
            <tr>
                <td><xsl:value-of select="/ite/profesores/profesor[4]/nombre" /></td>
                <td>Programación</td>
                <td>Lunes - Jueves 17:00-19:00</td>
            </tr>

        </table>
    </nav>

			<table class="tabla2">
				<th>
					1.Aprender haciendo.
					Hemos creado Action Learning, una metodología que garantiza el aprendizaje práctico gracias a la combinación de contenidos didácticos de calidad con plataformas de simulación reales. 
				</th>
				<th>
					2.Aprender haciendo.
					Hemos creado Action Learning, una metodología que garantiza el aprendizaje práctico gracias a la combinación de contenidos didácticos de calidad con plataformas de simulación reales. 
				</th>
				<th>
					3.Formar 100% online
					Tú eliges cómo, cuándo y dónde estudiar. Solo necesitas ganas y una conexión a internet. Llevamos más de una década formando a personas a través del e-learning. 
				</th>
				<tr>
					<td>
					4. Conectar con el mercado.
						Diseñamos nuestras formaciones escuchando las necesidades de las organizaciones. De esta manera, nuestros alumnos llegan más rápido y mejor preparados a las ofertas de trabajo. 
					</td>
					<td>    
						5.Aprender de los mejores.
						Nuestros profesores son unos apasionados instructores, además de profesionales en activo en empresas relevantes del sector tecnológico y digital. Así se garantiza una aprendizaje de calidad. 
					</td>
					<td>
						
						6.Estudiar acompañado.
						Todos nuestros alumnos están en contacto directo con profesores instructores, tutores, coachs académicos... Y compañeros, porque creemos en la formación en squads (grupos). 
					</td>
				</tr>
				</table>
				
			
				<div>
					<div class="caja5">
						<h1>Nuestros FP Informática</h1>
						<p>¡No te lo pierdas!</p>
						<p>Nuestros grados superiores de FP a distancia son titulaciones oficiales del Ministerio de Educación y de la Comunidad de Madrid. Sus planes de estudio están adaptados a las habilidades más demandadas por las empresas hoy. Todos incluyen prácticas garantizadas en las mejores empresas. </p>
						<hr/>
					</div>
					<div class="caja5">
						<h2><xsl:value-of select="/ite/ciclos/ciclo/nombre" />, tipo de grado:  <xsl:value-of select="/ite/ciclos/ciclo/grado" /></h2>
						<p>Asegura tu futuro profesional y prepárate para crecer en cualquier organización. Con el ciclo de FP Superior en Administración de Sistemas Informáticos en Red (ASIR) aprenderás a instalar y mantener sistemas operativos, software y todo tipo de servicios de red. Sabrás qué ajustes necesitas configurar en función de los objetivos, la calidad exigida y la normativa que se aplique en la empresa.</p>
						<hr/>
					</div>

					<div class="caja5">
						<h2><xsl:value-of select="/ite/ciclos/ciclo[2]/nombre" />, tipo de grado: <xsl:value-of select="/ite/ciclos/ciclo[2]/grado" /></h2>
						<p>Tu trabajo será clave en cualquier empresa. Con el CF de Grado Superior en Desarrollo de Aplicaciones Web, aprenderás a desarrollar y mantener páginas y aplicaciones web de diferentes modelos y con finalidades distintas. Te entrenarás en lenguajes de programación, en bases de datos, en arquitectura y en diseño. Y serás especialista en las tecnologías que marcan tendencia: MEAN and Full Stack.</p>
						<hr/>
					</div>

					<div class="caja5">
						<h2><xsl:value-of select="/ite/ciclos/ciclo[3]/nombre" />, tipo de grado: <xsl:value-of select="/ite/ciclos/ciclo[3]/grado" /></h2>
						<p>Conviértete en un profesional esencial en cualquier empresa. Aprende a programar y a mantener todo tipo de aplicaciones con el CF Grado Superior en Desarrollo de Aplicaciones Multimedia (DAM) con la especialización en DevOps. Trabajarás en entornos web, dispositivos móviles, la nube… y con diferentes lenguajes de programación. Dominarás el proceso de diseño y las tareas de supervisión en la creación de apps.</p>
						<hr/>
					</div>
				</div>
				    
				<nav class="caja3">
					<table class="posicionTabla">
						<th id="estiloCelda">Director</th>
						<th id="estiloCelda">Donde Encontrarnos</th>
						<tr>
							<td><xsl:value-of select="/ite/director/nombre" /></td>
							<td><xsl:value-of select="/ite/director/despacho" /></td>
						</tr>
						<tr>
							<td id="estiloCelda">Jefe de estudios</td>
							<td></td>
						</tr>
						<tr>
							<td><xsl:value-of select="/ite/jefe_estudios/nombre" /></td>
							<td><xsl:value-of select="/ite/jefe_estudios/despacho" /></td>
						</tr>
					</table>
				
				</nav>
				<form class="margen">
					<fieldset>
						<legend>Informate</legend>

						<label id="nombre" type="text" name="nombre"> Nombre :</label>
						<input id="nombre" type="text" name="nombre" placeholder="Nombre"/> 
					
						<label id="apellidos" type="text" name="apellidos">  Apellidos : </label>
						<input id="apellidos" type="text" name="apellidos" placeholder="Apellido"></input>
						<label id="telefono" type="tel" name="edad">  Teléfono : </label>
						<input id="telefono" type="text" name="telefono" placeholder="Teléfono"></input>
						<label for="fecha">  Fecha de nacimiento </label>
            			<input name="fecha" type="date"/>
						<br/>
						<br/>
						<label for="fp"> FP : </label>
						<select name="fo" >
							<option value="10"><xsl:value-of select="/ite/ciclos/ciclo/nombre" /></option>
							<option value="11"><xsl:value-of select="/ite/ciclos/ciclo[2]/nombre" /></option>
							<option value="12"><xsl:value-of select="/ite/ciclos/ciclo[3]/nombre" /></option>
						</select>
						<label for="new">  Email:  </label>
            			<input name="new" type="email" placeholder="Email"/>
						<br/>
						<br/>
						<label for="merchan">       ¿Quieres recibir información de ofertas?  </label>
						<input id="publi" type="checkbox" nombre="publicidad" value="A"/>  Si
						<input id="publi" type="checkbox" nombre="publicidad" value="B"/>  No
						<br/>
						<br/>
						<label for="obser">Cuentanos un poco sobre ti :</label>
            			<br/>
						<br/>
           				<textarea name="obser" style="resize: none;" rows="8" cols="100" placeholder="Observaciones"></textarea>
						 <br/>
						<br/>
						<label> Enviar formulario  </label>
						<input type="submit" value=" Enviar Datos "/>
					</fieldset>
				</form> 

				<footer class="cajaPie">
				<!-- pie pagina formulario en enlace-->
				<div>
					Necesitas más informacion pincha <span><a href="https://www.edix.com/es/">aquí</a></span>, te estamos esperando.
				</div>
				</footer>

			</article>
			
			
		</body>
		</html>		
	</xsl:template>
</xsl:stylesheet>