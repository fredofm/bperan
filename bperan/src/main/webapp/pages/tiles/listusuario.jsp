<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="btn-toolbar">
  <div class="btn-group pull-right">
    <s:url action="prepare_usuario" var="urlTag" />
	<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aqu� para a�adir un nuevo usuario"> 
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Usuario
	</a>
  </div>
</div>

<h2>Lista de usuarios del sistema</h2>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre</th>
		<th>Fecha Creaci�n</th>
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
				<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para editar este usuario">
          			<span class="glyphicon glyphicon-edit"></span>
        		</a>
			</td>
			
			<td>
			<s:url action="delete_usuario" var="urlTag">
				<s:param name="idusuario" value="idusuario"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para eliminar este usuario">
          			<span class="glyphicon glyphicon-trash"></span>
        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

<div class="btn-toolbar">
	  <div class="btn-group pull-left">
	    <s:url action="list_usuario" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aqu� para volver al listado"> Listado
		</a>
	  </div>
</div>