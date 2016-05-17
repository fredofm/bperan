<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!-- Geolocalización -->
<script src="http://maps.googleapis.com/maps/api/js">	
</script>

<script>
//var myCenter=new google.maps.LatLng(43.5575848,-5.7461577);
var myCenter=new google.maps.LatLng(document.getElementById(latitud).value,document.getElementById(longitud).value);

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


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="jumbotron" >
	<h3>Formulario de detalle de la obra</h3>
	<s:hidden name="idobra" />
	<div class="row">
		<div class="col-md-8">
			<h4>
				<strong>Datos Obra</strong>
			</h4>
			<div>
				<label>Nombre Obra </label><s:property value="nombreobra" />
			</div>
			<div>
				<label>Dirección </label><s:property value="direccion" />
			</div>
			<div id="latitud">
				<label>Latitud </label><s:property value="latitud" />
				<input type="hidden" value="<s:property value='latitud' />" id="latitud" />
			</div>
			<div id="longitud">
				<label>Longitud </label><s:property value="longitud" />
				<input type="hidden" value="<s:property value='longitud' />" id="longitud" />
			</div>
			<div>
				<label>Descripción </label><s:property value="descripcion" />
			</div>
			<div>
				<label>Fecha Inicio </label><s:property value="fechaInicio" />
			</div>
			<div>
				<label>Fecha Fin </label><s:property value="fechaFin" />
			</div>
			<div>
				<label>Estado </label><s:property value="estado" />
			</div>
			<h4>
				<strong>Fotos</strong>
				<s:url action="displayFotos" var="urlTag">
					<s:param name="idobra" value="idobra"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para ver las fotos de la obra">
				         <label>Ver Fotos </label>
					</a>
			</h4>
			
		</div>
		<div class="col-md-4" class="nav navbar-nav navbar-right">
			<h4>
				<strong>Localización</strong>
			</h4>
			<div id="googleMap" style="width: 350px; height: 350px;"></div>
		</div>
	</div>
</div>

<div class="btn-toolbar">
	<div class="btn-group pull-left">
		<s:url action="list_obras" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm"
			href="<s:property value="#urlTag"/>"
			title="Haga clic aquí para volver al listado"> Volver </a>
	</div>
</div>

