<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="jumbotron" >
	<h3>Formulario de detalle del empleado</h3>
	<s:hidden name="idempleado" />
	<div class="row">
		<div class="col-md-12">
			<h4>
				<strong>Datos Empleado</strong>
			</h4>
			<div>
				<label>Nombre </label><s:property value="nombre" />
			</div>
			<div>
				<label>Apellidos </label><s:property value="apellidos" />
			</div>
			<div>
				<label>NIF </label><s:property value="nif" />
			</div>
			<div>
				<label>Fecha Nacimiento </label><s:property value="fechanacimiento" />
			</div>
			<div>
				<label>Teléfono </label><s:property value="telefono" />
			</div>
			<div>
				<label>Dirección </label><s:property value="direccion" />
			</div>
			<div>
				<label>Poblacion </label><s:property value="poblacion" />
			</div>
			<div>
				<label>Provincia </label><s:property value="provincia" />
			</div>
			<div>
				<label>Código Postal </label><s:property value="codigopostal" />
			</div>
			<div>
				<label>Nacionalidad </label><s:property value="nacionalidad" />
			</div>
			<div>
				<label>Nª Seguridad Social </label><s:property value="numseguridadsocial" />
			</div>
			<div>
				<label>Tipo de Contrato </label><s:property value="tipocontrato" />
			</div>
			<div>
				<label>Fecha Alta </label><s:property value="fechaalta" />
			</div>
			<div>
				<label>Estado </label><s:property value="estado" />
			</div>
			<div>
				<label>Categoría </label><s:property value="categoria" />
			</div>
			<div>
				<label>Obra </label><s:property value="obras.nombreobra" />
			</div>
		</div>	
	</div>
</div>

<div class="btn-toolbar">
	<div class="btn-group pull-left">
		<s:url action="list_empleado" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm"
			href="<s:property value="#urlTag"/>"
			title="Haga clic aquí para volver al listado"> Volver </a>
	</div>
</div>

