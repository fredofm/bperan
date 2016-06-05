<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- Geolocalización -->
<script src="http://maps.googleapis.com/maps/api/js">
	
</script>

<script>
	var myCenter = new google.maps.LatLng(43.5575848, -5.7461577);

	function initialize() {
		var mapProp = {
			center : myCenter,
			zoom : 15,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		var map = new google.maps.Map(document.getElementById("googleMap"),
				mapProp);

		var marker = new google.maps.Marker({
			position : myCenter,
		});

		marker.setMap(map);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>

<div class="jumbotron">
	<div class="row"> 				
		<div class="col-lg-6">	
			<h3>
				<strong>Contacto</strong> </a>
			</h3>	
				<address>
					CONSTRUCCIONES BAHIA DE PERÁN, S.L.U.<br> Barreres, nº7, Oficina 2<br>
					33438 - Carreño<br> <abbr title="Phone">Teléfono:</abbr> 619 25 74
					18
				</address>
				<address>
					<strong>Mail</strong><br> <a href="mailto:#">info@construccionesbahiadeperan.es</a>
				</address>
				<address>
					<strong>Horario</strong><br> <abbr title="Phone">L-V</abbr> 8.30h - 20:00h
				</address>
				<img src="<s:url value="/images/logo_BPeran.jpg"/>" 
					class="img-responsive img-rounded" 
					style="width: 250px; height: 110px;">
				
		</div>
		<div class="col-lg-6">	
			<h3>
				<strong>Localización</strong>
			</h3>
				<div class="caption">
					<div id="googleMap" 
					     class="img-responsive img-rounded thumbnail"
						 style="width: 400px; height: 400px;">
						 
					</div>
				</div>
		</div>
	</div>
</div>