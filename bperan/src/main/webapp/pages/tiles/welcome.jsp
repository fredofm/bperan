<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- Geolocalización -->
<script
src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
var myCenter=new google.maps.LatLng(43.5575848,-5.7461577);

function initialize() {
  var mapProp = {
    center:myCenter,
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Main component for a primary marketing message or call to action -->
<div class="jumbotron">
	<h1>
		<img src="<s:url value="/images/logo.jpg"/>" class="img-rounded"
			alt="Logo Bahia de Peran" /> <strong>Bahía de Perán</strong>
	</h1>
	<h3>CONSTRUCCCIONES BAHIA DE PERÁN, S.L.U.</h3>
	<p>
		<small>Es una empresa dedicada a la construcción, obras y
			reformas de todo tipo. Construimos viviendas, oficinas y locales
			comerciales, con seriedad, imaginación, compromiso, calidad y siempre
			en el plazo acordado. Ofrecemos una dirección de obra personalizada,
			desde las primeras ideas hasta los últimos detalles de su reforma.
			Llevamos muchos años establecidos en Asturias, donde contamos con un
			gran número de clientes satisfechos.</small>
	</p>
	<p>
		<small><u>Eche un vistazo a nuestros proyectos más recientes</u></small> 
		 <s:url action="list_obras" var="urlTag" />
			<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		  		 title="Haga clic aquí para ver listado de obras"> Proyectos &raquo;
			</a>
				
	</p>
	<div class="row">
		<div class="col-md-8">
			<h3>
				<strong>Servicios</strong>
			</h3>
			<h4>
				<em>Construcción</em>
			</h4>
			<p>
				<small>CONSTRUCCIONES BAHIA DE PERÁN, S.L.U. cuenta con los
					profesionales más cualificados para encargarse de todos los
					procesos de la obra, incluyendo:</small>
			</p>
			<ul>
				<li>Realización de planos</li>
				<li>Trámite de permisos</li>
				<li>Seguimiento semanal de la obra</li>
				<li>Información detallada y constante</li>
			</ul>
			<br>
			<h4>
				<em>Renovaciones y reformas</em>
			</h4>
			<p>
				<small>CONSTRUCCIONES BAHIA DE PERÁN, S.L.U. lleva a cabo
					reformas de viviendas, oficinas y locales comerciales con el fin de
					responder a sus necesidades de transformación. Además le ofrecemos:</small>
			</p>
			<ul>
				<li>Presupuesto sin compromiso</li>
				<li>Ideas creativas para un mejor aprovechamiento del espacio</li>
				<li>Interiorismo y decoración</li>
				<li>Control de calidad</li>
			</ul>
		</div>
		<div class="col-md-4" class="nav navbar-nav navbar-right">
			<h4>
				<strong>Contacto</strong>
			</h4>
			<address>
				CONSTRUCCIONES BAHIA DE PERÁN, S.L.U.<br> Barreres, nº7,
				Oficina 2<br> 33438 - Carreño<br> <abbr title="Phone">Teléfono:</abbr>
				619 25 74 18
			</address>
			<address>
				<strong>Mail</strong><br> <a href="mailto:#">info@construccionesbahiadeperan.es</a>
			</address>
			<address>
				<strong>Horario</strong><br> <abbr title="Phone">L-V</abbr>
				8.30h - 20:00h
			</address>
			<img src="<s:url value="/images/logo_BPeran.jpg"/>"
				class="img-rounded" alt="Logo Bahia de Peran" />
			
			<h4>
				<strong>Localización</strong>
			</h4>
			<div id="googleMap" style="width:350px;height:350px;"></div>

		</div>

	</div>

	<div class="row">
		<div class="col-md-6">
			<h3>
				<strong>Equipo</strong>
			</h3>
			<h4>
				<em>Quienes somos</em>
			</h4>
			<p>
				<small>El equipo de CONSTRUCCIONES BAHIA DE PERÁN, S.L.U.
					está formado por arquitectos, aparejadores, ingenieros y
					profesionales de la construcción en los que puede confiar. Cada uno
					de nuestros proyectos es llevado por profesionales de máximo nivel.
					Nuestro método es la estandarización de todos los procesos, lo que
					nos permite que no quede ni un solo detalle al azar.</small>
			</p>
		</div>
		<div class="col-md-6">
			<h3>
				<strong>Información de la empresa</strong>
			</h3>
			<h4>
				<em>Certificado de calidad</em>
			</h4>
			<p>
				<small>CONSTRUCCIONES BAHIA DE PERÁN, S.L.U. ha obtenido el
					certificado de Calidad basado en el sistema de gestión ISO XXXX, lo
					que supone un gran respaldo al esfuerzo de los trabajadores que se
					han adaptado a este nuevo sistema. Esto significa un estímulo para
					seguir trabajando y seguir mejorando, teniendo como fin último la
					satisfacción de clientes y colaboradores.</small>
			</p>
			<h4>
				<em> Feria Internacional de Materiales de Construcción</em>
			</h4>
			<p>
				<small>La Feria Internacional de Materiales de Construcción
					es la feria comercial del sector de la construcción, un certamen de
					carácter bianual muy esperado para conocer las novedades del
					sector. CONSTRUCCIONES BAHIA DE PERÁN, S.L.U. participa cada año como
					expositor en la Feria.</small>
			</p>

		</div>

	</div>

</div>
