<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Datos Cliente</h3>
			    </div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-8">
							<div class="row">
					            <div class="col-md-4">Nombre Cliente</div>
					            <div class="col-md-4"><s:property value="nombreempresa" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">CIF/NIF</div>
					            <div class="col-md-4"><s:property value="cifNif" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Teléfono</div>
					            <div class="col-md-4"><s:property value="telefono"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">FAX</div>
					            <div class="col-md-4"><s:property value="fax"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Dirección</div>
					            <div class="col-md-4"><s:property value="direccion"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Población</div>
					            <div class="col-md-4"><s:property value="poblacion"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Provincia</div>
					            <div class="col-md-4"><s:property value="provincia"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Código Postal</div>
					            <div class="col-md-4"><s:property value="codigopostal"/></div>
					        </div>
					    	<div class="row">
					            <div class="col-md-4">Email</div>
					            <div class="col-md-4"><s:property value="emial"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Estado</div>
					            <div class="col-md-4"><s:property value="estado"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Usuario</div>
					            <div class="col-md-4"><s:property value="usuario.nombre"/></div>
					        </div>
				        </div>
				        <div class="col-md-4">
						      <img src="<s:url value="/images/cliente_view.jpg"/>" 
						      		class="img-responsive img-rounded" 
						      		style="width: 250px; height: 200px;">
	
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
			    	<h3 class="panel-title">Presupuestos</h3>
			    </div>
			    <div class="panel-body">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Coste Total</th>
								<th>Fecha Inicio</th>
								<th>Fecha Fin</th>
								<th>Estado</th>
								<th>Obra</th>
								
							</tr>
						</thead>
						<tbody>
							<s:iterator status="presupuesto" value="%{#request.listapresupuestoCliente}">
								<tr>
									<td><s:property value="costeTotal" /></td>
									<td><s:date name="fechaInicio" format="dd/MM/yyyy"/></td>
									<td><s:date name="fechaFin" format="dd/MM/yyyy"/></td>
									<td><s:property value="estado" /></td>
									<td><s:property value="obras.nombreobra" /></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<div class="row">
						<div class="col-md-2 left">
							<div class="btn-toolbar">
									<div class="btn-group pull-left">
										<s:url action="list_cliente" var="urlTag" />
										<a role="button" class="btn btn-primary btn-sm"
											href="<s:property value="#urlTag"/>"
											title="Haga clic aquí para volver al listado"> Volver </a>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>		
	





