<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Datos Empleado</h3>
			    </div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-8">
							<div class="row">
					            <div class="col-md-4">Nombre Empleado</div>
					            <div class="col-md-4"><s:property value="nombre" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Apellidos</div>
					            <div class="col-md-4"><s:property value="apellidos" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">NIF</div>
					            <div class="col-md-4"><s:property value="nif" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Fecha Nacimiento</div>
					            <div class="col-md-4"><s:date name="fechanacimiento" format="dd/MM/yyyy"/></div>
					        </div>
					         <div class="row">
					            <div class="col-md-4">Teléfono</div>
					            <div class="col-md-4"><s:property value="telefono"/></div>
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
					            <div class="col-md-4">Nacionalidad</div>
					            <div class="col-md-4"><s:property value="nacionalidad"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Nº Seguridad Social</div>
					            <div class="col-md-4"><s:property value="numseguridadsocial"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Tipo de Contrato</div>
					            <div class="col-md-4"><s:property value="tipocontrato"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Fecha Alta</div>
					            <div class="col-md-4"><s:date name="fechaalta" format="dd/MM/yyyy"/></div>
					        </div>
					        <div class="row">
					        	<div class="col-md-4">Categoría</div>
					            <div class="col-md-4"><s:property value="categoria"/></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Estado</div>
					            <div class="col-md-4"><s:property value="estado"/></div>
					        </div>
					        
				        </div>
				        <div class="col-md-4 margen-view">
						      <img src="<s:url value="/images/obrero.jpg"/>" 
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
			    	<h3 class="panel-title">Vacaciones</h3>
			    </div>
			    <div class="panel-body">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nombre Empleado</th>
								<th>Apellidos</th>
								<th>NIF</th>
								<th>Fecha Inicio</th>
								<th>Fecha Fin</th>
								
							</tr>
						</thead>
						<tbody>
							<s:iterator status="vacaciones" value="%{#request.listavacacionesEmpleado}">
								<tr>
									<td><s:property value="nombre" /></td>
									<td><s:property value="apellidos" /></td>
									<td><s:property value="nif" /></td>
									<td><s:date name="fechaInicio" format="dd/MM/yyyy"/></td>
									<td><s:date name="fechaFin" format="dd/MM/yyyy"/></td>
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
			    	<h3 class="panel-title">Baja Laboral</h3>
			    </div>
			    <div class="panel-body">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nombre Empleado</th>
								<th>Fecha Inicio</th>
								<th>Fecha Fin</th>
								<th>Tipo</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<s:iterator status="bajalaboral" value="%{#request.listaBajalaboralEmpleado}">
								<tr>
									<td><s:property value="nombre" /></td>
									<td><s:date name="fechaInicio" format="dd/MM/yyyy"/></td>
									<td><s:date name="fechaFin" format="dd/MM/yyyy"/></td>
									<td><s:property value="tipo" /></td>
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
										<s:url action="list_empleado" var="urlTag" />
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




