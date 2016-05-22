<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!-- Geolocalización -->
<script src="http://maps.googleapis.com/maps/api/js">	
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
			<div>
				<label>Latitud </label><s:property value="latitud" />
				<input type="hidden" value="<s:property value="latitud" />" id="latitud" />
			</div>
			<div>
				<label>Longitud </label><s:property value="longitud" />
				<input type="hidden" value="<s:property value="longitud" />" id="longitud" />
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
						
			<h4><strong>Datos Presupuesto</strong></h4>
			<s:url action="view_presupuesto" var="urlTag">
				<s:param name="idpresupuesto" value="idpresupuesto"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para ver el presupuesto de la obra">
			         <label>Ver Presupuesto </label>
				</a>
			<div>
				<label>Coste Total </label><s:property value="presupuesto.costeTotal" />
			</div>
			
			<h4><strong>Datos Cliente</strong></h4>
			<s:url action="view_cliente" var="urlTag">
				<s:param name="idcliente" value="idcliente"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para ver el cliente de la obra">
			         <label>Ver Cliente </label>
				</a>
			<div>
				<label>Nombre cliente </label><s:property value="cliente.nombreempresa" />
			</div>
			
			<h4><strong>Fotos</strong></h4>
			<s:iterator status="foto" value="%{#request.listaFotos}">
				<s:url action="displayFoto" var="url">
					<s:param name="id" value="idfoto"/>
				</s:url>
				<img src="<s:property value="#url"/>"/>
			</s:iterator>
				
				
			
			
		</div>
		<div class="col-md-4" class="nav navbar-nav navbar-right">
			<h4>
				<strong>Localización</strong>
			</h4>
			<div id="googleMap" style="width: 350px; height: 350px;"></div>
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
</div>



<script>
//var myCenter=new google.maps.LatLng(43.5575848,-5.7461577);
var myCenter=new google.maps.LatLng(document.getElementById("latitud").value, document.getElementById("longitud").value);

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