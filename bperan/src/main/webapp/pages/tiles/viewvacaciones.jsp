<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="jumbotron" >
	<h3>Formulario de detalle de vacaciones</h3>
	<s:hidden name="idvacaciones" />
	<div class="row">
		<div class="col-md-12">
			<h4>
				<strong>Datos Vacaciones</strong>
			</h4>
			<div>
				<label>Nombre Empleado </label><s:property value="empleado.nombre" />
			</div>
			<div>
				<label>Fecha Inicio </label><s:property value="fechaInicio" />
			</div>
			<div>
				<label>Fecha Fin </label><s:property value="fechaFin" />
			</div>
			
		</div>	
	</div>
	<div class="btn-toolbar">
		<div class="btn-group pull-left">
			<s:url action="list_vacaciones" var="urlTag" />
			<a role="button" class="btn btn-primary btn-sm"
				href="<s:property value="#urlTag"/>"
				title="Haga clic aquí para volver al listado"> Volver </a>
		</div>
	</div>
</div>



