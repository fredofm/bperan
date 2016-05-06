<%@ taglib prefix="s" uri="/struts-tags"%>

<h1>Lista de usuarios del sistema</h1>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre</th>
		<th>Fecha Creación</th>
		<th>Rol</th>
		<th></th>
		<th></th>
	</tr>
</thead>
<tbody>
	<s:iterator status="usuario" value="%{#request.listaUsuarios}">
		<tr>
			<td><s:property value="nombre" /></td>
			<td><s:date name="fechacreacion" format="dd/MM/yyyy hh:mm:ss"/></td>
			<td><s:property value="role.nombre" /></td>
			
			<td>
			<s:url action="prepare_usuario" var="urlTag">
				<s:param name="id" value="idusuario"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para editar este usuario">
          			<span class="glyphicon glyphicon-edit"></span>
        		</a>
			</td>
			
			<td>
			<s:url action="delete_usuario" var="urlTag">
				<s:param name="idusuario" value="idusuario"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para eliminar este usuario">
          			<span class="glyphicon glyphicon-trash"></span>
        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

<s:url action="prepare_usuario" var="urlTag" />
<a role="button" class="btn btn-primary" href="<s:property value="#urlTag"/>"> 
	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo
</a>