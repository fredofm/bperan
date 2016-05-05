<%@ taglib prefix="s" uri="/struts-tags"%>

<h1>Listado de Clientes</h1>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre Cliente</th>
		<th>CIF/NIF</th>
		<th>Teléfono</th>
		<th>Fax</th>
		<th>Dirección</th>
		<th>Población</th>
		<th>Provincia</th>
		<th>Código Postal</th>
		<th>Email</th>
		<th>Estado</th>
		<th>Usuario</th>
		<th></th>
	</tr>
</thead>
<tbody>
	<s:iterator status="cliente" value="%{#request.listaCliente}">
		<tr>
			<td><s:property value="nombreempresa" /></td>
			<td><s:property value="cifNif" /></td>
			<td><s:property value="telefono" /></td>
			<td><s:property value="fax" /></td>
			<td><s:property value="direccion" /></td>
			<td><s:property value="poblacion" /></td>
			<td><s:property value="provincia" /></td>
			<td><s:property value="codigopostal" /></td>
			<td><s:property value="emial" /></td>
			<td><s:property value="estado" /></td>
			<td><s:property value="usuario.nombre" /></td>
			<td>
			
			<s:url action="delete_cliente" var="urlTag">
				<s:param name="idcliente" value="idcliente"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para eliminar este cliente">
          			<span class="glyphicon glyphicon-trash"></span>
        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

<s:url action="prepare_cliente" var="urlTag" />
<a role="button" class="btn btn-primary" href="<s:property value="#urlTag"/>"> 
	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Cliente
</a>