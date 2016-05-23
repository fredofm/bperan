<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!-- Geolocalizaci�n -->
<script src="http://maps.googleapis.com/maps/api/js">	
</script>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Datos Obra</h3>
			    </div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-8">
							<div class="row">
					            <div class="col-md-4">Nombre Obra</div>
					            <div class="col-md-8"><s:property value="nombreobra" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Direcci�n</div>
					            <div class="col-md-8"><s:property value="direccion" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Descripci�n</div>
					            <div class="col-md-8"><s:property value="descripcion" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Fecha Inicio</div>
					            <div class="col-md-8"><s:date name="fechaInicio" format="dd/MM/yyyy"/></div>
					        </div>
					         <div class="row">
					            <div class="col-md-4">Fecha Fin</div>
					            <div class="col-md-8"><s:date name="fechaFin" format="dd/MM/yyyy"/></div>
					        </div>
				        </div>
				        <div class="col-md-4">
							<div id="googleMap" style="width: 200px; height: 200px;"></div>
						</div>
			        </div>
	       		</div>
			</div>
		</div>
		
	</div>
	
	<div class="row">
		<div class="col-md-12">
		
		<div class="panel panel-default">
			<div class="panel-heading clearfix">
		    	<h3 class="panel-title">Fotos Obra</h3>
		    </div>
		    <div class="panel-body">
		    <div class="row">
			<s:iterator status="foto" value="%{#request.listaFotos}">
				<div class="col-md-4 thumb">
				<s:url action="displayFoto" var="url">
					<s:param name="id" value="idfoto"/>
				</s:url>
					<a class="thumbnail" href="#">
                    	<img class="img-responsive" src="<s:property value="#url"/>"/>
                    </a>
				</div>
			</s:iterator>
			</div>
			</div>
		</div>
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Presupuestos</h3>
			    </div>
			    <div class="panel-body">
					<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>Cliente</th>
							<th>Obra</th>
							<th>Coste Total</th>
							<th>Fecha Inicio</th>
							<th>Fecha Fin</th>
							<th>Estado</th>
						</tr>
					</thead>
					<tbody>
					<s:iterator status="presupuesto" value="%{#request.listaPresupuestosObras}">
						<tr>
						<td><s:property value="cliente.nombreempresa" /></td>
						<td><s:property value="obras.nombreobra" /></td>
						<td><s:property value="costeTotal" /></td>
						<td><s:date name="fechaInicio" format="dd/MM/yyyy"/></td>
						<td><s:date name="fechaFin" format="dd/MM/yyyy"/></td>
						<td><s:property value="estado" /></td>
						</tr>
					</s:iterator>
					</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Lista Empleados</h3>
			    </div>
			    <div class="panel-body">
				    <table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nombre</th>
								<th>Apellidos</th>
								<th>NIF</th>
								<th>Tel�fono</th>
								<th>N�mero Seguridad Social</th>
								<th>Categor�a</th>
								<th>Fecha Alta</th>
								<th>Estado</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator status="empleado" value="%{#request.listaEmpleadosObra}">
								<tr>
									<td> <s:property value="nombre" /></td>
									<td><s:property value="apellidos" /></td>
									<td><s:property value="nif" /></td>
									<td><s:property value="telefono" /></td>
									<td><s:property value="numseguridadsocial" /></td>
									<td><s:property value="categoria" /></td>
									<td><s:date name="fechaalta" format="dd/MM/yyyy"/></td>
									<td><s:property value="estado" /></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="btn-toolbar">
		<div class="btn-group pull-left">
			<s:url action="list_obras" var="urlTag" />
			<a role="button" class="btn btn-primary btn-sm"
				href="<s:property value="#urlTag"/>"
				title="Haga clic aqu� para volver al listado"> Volver </a>
		</div>
	</div>

</div>



<script type="text/javascript">

//var myCenter=new google.maps.LatLng(43.5575848,-5.7461577);
var myCenter=new google.maps.LatLng(<s:property value="latitud" />, <s:property value="longitud" />);

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