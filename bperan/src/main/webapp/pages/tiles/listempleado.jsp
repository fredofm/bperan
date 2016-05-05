<%@ taglib prefix="s" uri="/struts-tags"%>

<h1>Listado de Empleados</h1>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre Empleado</th>
		<th>Apellidos</th>
		<th>NIF</th>
		<th>Teléfono</th>
		<th>Número Seguridad Social</th>
		<th>Categoría</th>
		<th>Fecha Alta</th>
		<th>Estado</th>
		<th>Obra</th>
		<th></th>
	</tr>
</thead>
<tbody>
	<s:iterator status="empleado" value="%{#request.listaEmpleados}">
		<tr>
			<td><s:property value="nombre" /></td>
			<td><s:property value="apellidos" /></td>
			<td><s:property value="nif" /></td>
			<td><s:property value="telefono" /></td>
			<td><s:property value="numseguridadsocial" /></td>
			<td><s:property value="categoria" /></td>
			<td><s:property value="fechaalta" /></td>
			<td><s:property value="estado" /></td>
			<td><s:property value="obras.nombreobra" /></td>
			<td>
			
			<s:url action="delete_empleado" var="urlTag">
				<s:param name="idempleado" value="idempleado"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para eliminar este empleado">
          			<span class="glyphicon glyphicon-trash"></span>
        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

<s:url action="prepare_empleado" var="urlTag" />
<a role="button" class="btn btn-primary" href="<s:property value="#urlTag"/>"> 
	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Empleado
</a>