<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="jumbotron" >
	<h3>Formulario de detalle del cliente</h3>
	<s:hidden name="idcliente" />
	<div class="row">
		<div class="col-md-12">
			<h4>
				<strong>Datos Cliente</strong>
			</h4>
			<div>
				<label>Nombre Empresa </label><s:property value="nombreempresa" />
			</div>
			<div>
				<label>CIF/NIF </label><s:property value="cifNif" />
			</div>
			<div>
				<label>Teléfono </label><s:property value="telefono" />
			</div>
			<div>
				<label>FAX </label><s:property value="fax" />
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
				<label>Email </label><s:property value="emial" />
			</div>
			<div>
				<label>Estado </label><s:property value="estado" />
			</div>
			<div>
				<label>Usuario </label><s:property value="usuario.nombre" />
			</div>
		</div>	
	</div>
</div>

<div class="btn-toolbar">
	<div class="btn-group pull-left">
		<s:url action="list_cliente" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm"
			href="<s:property value="#urlTag"/>"
			title="Haga clic aquí para volver al listado"> Volver </a>
	</div>
</div>

