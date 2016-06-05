<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Datos Presupuesto</h3>
			    </div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-8">
					       <div class="row">
								<div class="col-md-4">Coste Total</div>
								<div class="col-md-4"><s:property value="costeTotal"/></div>
						   </div>
					       <div class="row">
								 <div class="col-md-4">Fecha Inicio</div>
								 <div class="col-md-4"><s:date name="fechaInicio" format="dd/MM/yyyy"/></div>
							</div>
							<div class="row">
								<div class="col-md-4">Fecha Fin</div>
								<div class="col-md-4"><s:date name="fechaFin" format="dd/MM/yyyy"/></div>
							</div>
							<div class="row">
								<div class="col-md-4">Estado</div>
								<div class="col-md-4"><s:property value="estado"/></div>
							</div>
     					</div>
     					<div class="col-md-4">
						      <img src="<s:url value="/images/presupuesto.jpg"/>" 
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
			    	<h3 class="panel-title">Datos Cliente</h3>
			    </div>
			    <div class="panel-body">
			    	<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nombre Empresa</th>
								<th>CIF/NIF</th>
								<th>Estado</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><s:property value="cliente.nombreempresa" /></td>
								<td><s:property value="cliente.cifNif" /></td>
								<td><s:property value="cliente.estado" /></td>
							</tr>							
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
			    	<h3 class="panel-title">Datos Obra</h3>
			    </div>
			    <div class="panel-body">
			    	<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nombre Obra</th>
								<th>Fecha Inicio</th>
								<th>Fecha Fin</th>
								<th>Estado</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><s:property value="obras.nombreobra" /></td>
								<td><s:date name="obras.fechaInicio" format="dd/MM/yyyy"/></td>
								<td><s:date name="obras.fechaFin" format="dd/MM/yyyy"/></td>
								<td><s:property value="obras.estado" /></td>
							</tr>							
						</tbody>
					</table>
					<div class="row">
						<div class="col-md-2 left">
							<div class="btn-toolbar">
									<div class="btn-group pull-left">
										<s:url action="list_presupuesto" var="urlTag" />
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

