<%@ taglib prefix="s" uri="/struts-tags"%>


<s:form action="buscar_usuario" cssClass="well form-search" label="Formulario de b�squeda" theme="simple">
	<h2>B�squeda de Usuarios</h2>
	<div class="form-group">
        <div class="row">
            <div class="col-xs-4">
            	<label for="buscar_usuario_nombre" class="control-label">Nombre</label>
				<s:textfield name="nombre" placeholder="Nombre Usuario" cssClass="form-control"/>
			</div>
		</div>
	</div>	
	<s:submit cssClass="btn btn-primary btn-sm" value="Buscar"/>
	<s:url action="list_usuario" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aqu� para volver al listado"> Limpiar
		</a>
</s:form>

<div class="panel panel-info">
	<div class="panel-body">
		<div class="row">
			<div class="col-md-10 "> 	
				<h2>Lista de usuarios del sistema</h2>
			</div>
			<div class="col-md-2 right">
				<div class="btn-toolbar">
				  <div class="btn-group pull-right">
				    <s:url action="prepare_usuario" var="urlTag" />
					<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aqu� para a�adir un nuevo usuario"> 
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Usuario
					</a>
				  </div>
				</div>
			</div>
		</div>

		<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Fecha Creaci�n</th>
				<th>Rol</th>
				<th></th>
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
					<s:url action="view_usuario" var="urlTag">
							<s:param name="id" value="idusuario"/>
						</s:url>
						<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para ver el detalle del usuario">
						    <span class="glyphicon glyphicon-list-alt"></span>
						</a>
					</td>
					
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
						<a href="<s:property value="#urlTag"/>" class="delete" title="Haga clic aqu� para eliminar este usuario">
		          			<span class="glyphicon glyphicon-trash"></span>
		        		</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
		</table>
	</div>
</div>
