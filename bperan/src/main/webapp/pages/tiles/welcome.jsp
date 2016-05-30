<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- Geolocalizaci�n -->
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
					alt="Logo Bahia de Peran" /> <strong>Bah�a de Per�n</strong>
			</h1>
			<h3>CONSTRUCCIONES BAHIA DE PER�N, S.L.U.</h3>
			<p>
				<small>Es una empresa dedicada a la construcci�n, obras y
					reformas de todo tipo. Construimos viviendas, oficinas y locales
					comerciales, con seriedad, imaginaci�n, compromiso, calidad y siempre
					en el plazo acordado. Ofrecemos una direcci�n de obra personalizada,
					desde las primeras ideas hasta los �ltimos detalles de su reforma.
					Llevamos muchos a�os establecidos en Asturias, donde contamos con un
					gran n�mero de clientes satisfechos.</small>
			</p>
			<div class="row"> 				
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/carreno1.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa El Regueral</small></h2>
				              	<p><small>Construcci�n �ntegra de una bonita casa en la localidad El Regueral, Carre�o</small>
				          		</p>
				      </div>
				   </div>
				</div>
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/perlora1.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa Piedeloro</small></h2>
				              	<p><small>Construcci�n casa en Piedeloro, Carre�o</small>
				          		</p>
				      </div>
				   </div>
				</div>
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/villa2.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa Villa</small></h2>
				              	<p><small>Construcci�n �ntegra de una bonita casa en la localidad de Villa, Nava</small>
				          		</p>
				      </div>
				   </div>
				</div>
				<div class="col-xs-6 col-md-3">
				   <div class="thumbnail">
				      <img src="<s:url value="/images/gijon1.jpg"/>" class="img-responsive img-rounded">
				      <div class="caption">
				          <h2><small>Casa Cabue�es</small></h2>
				              	<p><small>Rehabilitaci�n exterior de casa en Cabue�es, Gij�n</small>
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
										<em>Construcci�n</em>
									</h4>
										<p>
										<small>CONSTRUCCIONES BAHIA DE PER�N, S.L.U. cuenta con los
											profesionales m�s cualificados para encargarse de todos los
											procesos de la obra, incluyendo:</small>
										</p>
										<ul>
											<li>Realizaci�n de planos</li>
											<li>Tr�mite de permisos</li>
											<li>Seguimiento semanal de la obra</li>
											<li>Informaci�n detallada y constante</li>
										</ul>
										<br>
									<h4>
										<em>Renovaciones y reformas</em>
									</h4>		
										<p>
										<small>CONSTRUCCIONES BAHIA DE PER�N, S.L.U. lleva a cabo
											reformas de viviendas, oficinas y locales comerciales con el fin de
											responder a sus necesidades de transformaci�n. Adem�s le ofrecemos:</small>
										</p>
										<ul>
											<li>Presupuesto sin compromiso</li>
											<li>Ideas creativas para un mejor aprovechamiento del espacio</li>
											<li>Interiorismo y decoraci�n</li>
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
												<small>El equipo de CONSTRUCCIONES BAHIA DE PER�N, S.L.U.
													est� formado por arquitectos, aparejadores, ingenieros y
												profesionales de la construcci�n en los que puede confiar. Cada uno
												de nuestros proyectos es llevado por profesionales de m�ximo nivel.
												Nuestro m�todo es la estandarizaci�n de todos los procesos, lo que
												nos permite que no quede ni un solo detalle al azar.</small>
											</p>
									</div>								
								</div>
						</div>
						<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h3>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											 <strong>Informaci�n de inter�s</strong>								
										</a>
									</h3>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										<h4>
											<em>Certificado de calidad</em>
										</h4>
											<p>
												<small>CONSTRUCCIONES BAHIA DE PER�N, S.L.U. ha obtenido el
												certificado de Calidad basado en el sistema de gesti�n ISO XXXX, lo
												que supone un gran respaldo al esfuerzo de los trabajadores que se
												han adaptado a este nuevo sistema. Esto significa un est�mulo para
												seguir trabajando y seguir mejorando, teniendo como fin �ltimo la
												satisfacci�n de clientes y colaboradores.</small>
											</p>
										<h4>
											<em>Feria Internacional de Materiales de Construcci�n</em>
										</h4>
											<p>
												<small>La Feria Internacional de Materiales de Construcci�n
												es la feria comercial del sector de la construcci�n, un certamen de
												car�cter bianual muy esperado para conocer las novedades del
												sector. CONSTRUCCIONES BAHIA DE PER�N, S.L.U. participa cada a�o como
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
											CONSTRUCCIONES BAHIA DE PER�N, S.L.U.<br> Barreres, n�7,
											Oficina 2<br> 33438 - Carre�o<br> <abbr title="Phone">Tel�fono:</abbr>
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
											 <strong>Localizaci�n</strong>								
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

