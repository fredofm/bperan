<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Baja Laboral</h3>
			    </div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-12">
					       <div class="row">
								 <div class="col-md-4">Fecha Inicio</div>
								 <div class="col-md-8"><s:date name="fechaInicio" format="dd/MM/yyyy"/></div>
							</div>
							<div class="row">
								<div class="col-md-4">Fecha Fin</div>
								<div class="col-md-8"><s:date name="fechaFin" format="dd/MM/yyyy"/></div>
							</div>
							<div class="row">
								<div class="col-md-4">Tipo</div>
								<div class="col-md-8"><s:property value="tipo"/></div>
							</div>
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
								<th></th>
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
				</div>
			</div>
		</div>
</div>
	
<div class="btn-toolbar">
		<div class="btn-group pull-left">
			<s:url action="list_bajalaboral" var="urlTag" />
			<a role="button" class="btn btn-primary btn-sm"
				href="<s:property value="#urlTag"/>"
				title="Haga clic aquí para volver al listado"> Volver </a>
		</div>
</div>




