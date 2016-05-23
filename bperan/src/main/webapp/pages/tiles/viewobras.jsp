<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!-- Geolocalización -->
<script src="http://maps.googleapis.com/maps/api/js">	
</script>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="row">
	            <div class="col-md-4">Nombre Obra</div>
	            <div class="col-md-8"><s:property value="nombreobra" /></div>
	        </div>
	        <div class="row">
	            <div class="col-md-4">Dirección</div>
	            <div class="col-md-8"><s:property value="direccion" /></div>
	        </div>
	        <div class="row">
	            <div class="col-md-4">Descripción</div>
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
			<div id="googleMap" style="width: 350px; height: 350px;"></div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		  	
		  	<s:iterator status="foto" value="%{#request.listaFotos}">
		  		<li data-target="#myCarousel" data-slide-to="<s:property value="#foto.index" />" <s:if test="#foto.first">class="active"</s:if>></li>
			</s:iterator>		
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		  	<s:iterator status="foto" value="%{#request.listaFotos}">
		    <div class="carousel-item <s:if test="#foto.first">active</s:if>">
			     <s:url action="displayFoto" var="url" >
					<s:param name="id" value="idfoto"/>
				</s:url>
				<img src="<s:property value="#url"/>" alt="foto"/>
		    </div>
		    </s:iterator>
		  </div>
		
		  <!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		    <span class="icon-prev" aria-hidden="true"></span>
		    <span class="sr-only">Anterior</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		    <span class="icon-next" aria-hidden="true"></span>
		    <span class="sr-only">Siguiente</span>
		  </a>
		</div>
		
		
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-md-12">
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