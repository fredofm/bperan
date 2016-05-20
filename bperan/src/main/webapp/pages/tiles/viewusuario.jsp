<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="jumbotron" >
	<h3>Formulario de detalle del usuario</h3>
	<s:hidden name="idusuario" />
	<div class="row">
		<div class="col-md-12">
			<h4>
				<strong>Datos Usuario</strong>
			</h4>
			<div>
				<label>Nombre </label><s:property value="nombre" />
			</div>
			<div>
				<label>Password </label><s:property value="password" />
			</div>
			<div>
				<label>Role </label><s:property value="role.nombre" />
			</div>
			<div>
				<label>Fecha de Creación </label><s:property value="fechacreacion" />
			</div>			
			
		</div>	
	</div>
	<div class="btn-toolbar">
		<div class="btn-group pull-left">
			<s:url action="list_usuario" var="urlTag" />
			<a role="button" class="btn btn-primary btn-sm"
				href="<s:property value="#urlTag"/>"
				title="Haga clic aquí para volver al listado"> Volver </a>
		</div>
	</div>
</div>



