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
			<h3>CONSTRUCCIONES BAHIA DE PERÁN, S.L.U.</h3>
			<p>
				<small>Es una empresa dedicada a la construcción, obras y
					reformas de todo tipo. Construimos viviendas, oficinas y locales
					comerciales, con seriedad, imaginación, compromiso, calidad y siempre
					en el plazo acordado. Ofrecemos una dirección de obra personalizada,
					desde las primeras ideas hasta los últimos detalles de su reforma.
					Llevamos muchos años establecidos en Asturias, donde contamos con un
					gran número de clientes satisfechos.</small>
			</p>
			<div class="row"> 				
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/carreno1.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa El Regueral</small></h2>
				              	<p><small>Construcción íntegra de una bonita casa en la localidad El Regueral, Carreño</small>
				          		</p>
				      </div>
				   </div>
				</div>
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/perlora1.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa Piedeloro</small></h2>
				              	<p><small>Construcción casa en Piedeloro, Carreño</small>
				          		</p>
				      </div>
				   </div>
				</div>
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/villa2.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa Villa</small></h2>
				              	<p><small>Construcción íntegra de una bonita casa en la localidad de Villa, Nava</small>
				          		</p>
				      </div>
				   </div>
				</div>
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/gijon1.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa Cabueñes</small></h2>
				              	<p><small>Rehabilitación exterior de casa en Cabueñes, Gijón</small>
				          		</p>
				      </div>
				   </div>
				</div>
			</div>
</div>
<div class="jumbotron">					
			<div class="row">
				<div class="col-md-8">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h3>
									<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
				         				 <strong>Servicios</strong>								
				    			    </a>
				    			</h3>
							</div>
							<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
						      	<div class="panel-body">
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
							</div>
						</div>
						<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h3>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											 <strong>Equipo</strong>								
										</a>
									</h3>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
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
								</div>
						</div>
						<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h3>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											 <strong>Información de interés</strong>								
										</a>
									</h3>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
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
											<em>Feria Internacional de Materiales de Construcción</em>
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
                    </div>
				</div>

				<div class="col-md-4" class="nav navbar-nav navbar-right">
					<div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFour">
									<h3>
										<a role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
											 <strong>Contacto</strong>								
										</a>
									</h3>
								</div>
								<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
									<div class="panel-body">								
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
									</div>
								</div>
	                        </div>
	              </div>
	              <div class="panel-group" id="accordion3" role="tablist" aria-multiselectable="true">							
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFive">
									<h3>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion3" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
											 <strong>Localización</strong>								
										</a>
									</h3>
								</div>	
								<div id="collapseFive" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFive">
									<div class="panel-body">														
										<div id="googleMap" class="img-responsive img-rounded thumbnail" style="width:350px;height:350px;"></div>
									</div>

								</div>	
							</div>	
				 </div>		
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="col-md-4">
				<img src="<s:url value="/images/logo_BPeran.jpg"/>"
					class="img-responsive img-rounded thumbnail" alt="Logo Bahia de Peran" />
			</div>
			<div class="col-md-4">
			</div>
       	</div>
		
</div>

