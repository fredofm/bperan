<%@ taglib prefix="s" uri="/struts-tags"%>

<h1>Lista de usuarios del sistema</h1>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre</th>
		<th>Fecha Creación</th>
		<th>Rol</th>
	</tr>
</thead>
<tbody>
	<s:iterator status="usuario" value="%{#request.listaUsuarios}">
		<tr>
			<td><s:property value="nombre" /></td>
			<td><s:date name="fechacreacion" format="dd/MM/yyyy hh:mm:ss"/></td>
			<td><s:property value="role.nombre" /></td>
		</tr>
	</s:iterator>
</tbody>
</table>

<s:url action="prepare_usuario" var="urlTag" />
<a role="button" class="btn btn-primary" href="<s:property value="#urlTag"/>"> 
	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo
</a>