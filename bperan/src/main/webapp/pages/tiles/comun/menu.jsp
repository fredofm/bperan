<%@ taglib prefix="s" uri="/struts-tags"%>

			
<!-- Main component for a primary marketing message or call to action -->
<div class="jumbotron jumbohead">
	<div class="banner-head">
		<h1>
			<img src="<s:url value="/images/logo.jpg"/>" class="img-rounded" alt="Logo Bahía de Peran" /> 
			<strong>Bahía de Perán</strong>
		</h1>
	</div>	
				
	<div class="row menu">
		<ul class="nav navbar-nav">
			<li><s:url action="welcome" var="urlTag" />
					<a href="<s:property value="#urlTag"/>">Inicio</a>
			</li>							
			<li><s:url action="inicio_servicios" var="urlTag" /> 
					<a href="<s:property value="#urlTag"/>">Servicios</a>
			</li>
			<li><s:url action="inicio_equipo" var="urlTag" /> 
					<a href="<s:property value="#urlTag"/>">Equipo</a>
			</li>
			<li><s:url action="inicio_informacion" var="urlTag" />
					<a href="<s:property value="#urlTag"/>">Información de Interés</a>
			</li>
			<li><s:url action="inicio_contacto" var="urlTag" />
					<a href="<s:property value="#urlTag"/>">Contacto</a>
			</li>
		
		</ul>
	</div>		
</div>
		