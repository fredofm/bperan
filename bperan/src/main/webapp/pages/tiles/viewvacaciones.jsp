<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Vacaciones</h3>
			    </div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-8">
					       <div class="row">
								 <div class="col-md-4">Fecha Inicio</div>
								 <div class="col-md-4"><s:date name="fechaInicio" format="dd/MM/yyyy"/></div>
							</div>
							<div class="row">
								<div class="col-md-4">Fecha Fin</div>
								<div class="col-md-4"><s:date name="fechaFin" format="dd/MM/yyyy"/></div>
							</div>
     					</div>
     					<div class="col-md-4">
						      <img src="<s:url value="/images/calendar.jpg"/>" 
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
			    	<h3 class="panel-title">Datos Empleado</h3>
			    </div>
			    <div class="panel-body">
			    	<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nombre Empleado</th>
								<th>Apellidos</th>
								<th>NIF</th>
								<th>Estado</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><s:property value="empleado.nombre" /></td>
								<td><s:property value="empleado.apellidos" /></td>
								<td><s:property value="empleado.nif" /></td>
								<td><s:property value="empleado.estado" /></td>
							</tr>							
						</tbody>
					</table>
					<div class="row">
						<div class="col-md-2 left">
							<div class="btn-toolbar">
									<div class="btn-group pull-left">
										<s:url action="list_vacaciones" var="urlTag" />
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






