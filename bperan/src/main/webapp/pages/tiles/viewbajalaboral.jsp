<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="jumbotron" >
	<h3>Formulario de detalle de baja laboral</h3>
	<s:hidden name="idbajalaboral" />
	<div class="row">
		<div class="col-md-12">
			<h4>
				<strong>Datos Baja Laboral</strong>
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
			<div>
				<label>Tipo </label><s:property value="tipo" />
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
</div>



