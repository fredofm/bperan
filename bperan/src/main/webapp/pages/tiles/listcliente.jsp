<%@ taglib prefix="s" uri="/struts-tags"%>

<h2>Búsqueda de Clientes</h2>
<s:form action="buscar_cliente" cssClass="well form-search" label="Formulario de búsqueda" theme="simple">
	<div class="form-group">
        <div class="row">
        	<div class="col-xs-4">
            	<label for="buscar_cliente_nombreempresa" class="control-label">Nombre</label>
				<s:textfield name="nombreempresa" placeholder="Nombre Cliente" cssClass="form-control"/>
			</div>
			<div class="col-xs-4">
            	<label for="buscar_cliente_cifNif" class="control-label">CIF/NIF</label>
				<s:textfield name="cifNif" placeholder="CIF/NIF de la empresa" cssClass="form-control"/>
			</div>
            <div class="col-xs-4">
				<label for="buscar_cliente_estado" class="control-label">Estado</label>
				<s:select 
                   		tooltip="Seleccione el estado" 
                   		label="Estado"
						list="#{'Activo':'Activo', 'NoActivo':'NoActivo'}" 
						name="estado"  
						headerKey=""
						headerValue="Seleccione el estado"
						placeholder="Estado"
						cssClass="form-control"/>
			</div>
			 <div class="col-xs-4">
            	<label for="buscar_cliente_usuario.nombre" class="control-label">Nombre Usuario</label>
				<s:textfield name="usuario.nombre" placeholder="Nombre Usuario" cssClass="form-control"/>
			</div>    
		</div>
	</div>	
	<s:submit cssClass="btn btn-primary btn-sm" value="Buscar"/>
	<s:url action="list_cliente" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Limpiar
		</a>
</s:form>

<div class="btn-toolbar">
  <div class="btn-group pull-right">
    <s:url action="prepare_cliente" var="urlTag" />
	<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aquí para añadir un nuevo cliente"> 
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Cliente
	</a>
  </div>
</div>

<h2>Listado de Clientes</h2>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre</th>
		<th>CIF/NIF</th>
		<th>Teléfono</th>	
		<th>Dirección</th>
		<th>Población</th>
		<th>Email</th>
		<th>Estado</th>
		<th></th>
	</tr>
</thead>
<tbody>
	<s:iterator status="cliente" value="%{#request.listaCliente}">
		<tr>
			<td><s:property value="nombreempresa" /></td>
			<td><s:property value="cifNif" /></td>
			<td><s:property value="telefono" /></td>
			<td><s:property value="direccion" /></td>
			<td><s:property value="poblacion" /></td>
			<td><s:property value="emial" /></td>
			<td><s:property value="estado" /></td>
			<td>
			
			<td>
				<s:url action="view_cliente" var="urlTag">
						<s:param name="id" value="idcliente"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para ver el detalle de este cliente">
					    <span class="glyphicon glyphicon-list-alt"></span>    
					</a>
			</td>
			
			<td>
				<s:url action="prepare_cliente" var="urlTag">
					<s:param name="id" value="idcliente"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para editar este cliente">
	          			<span class="glyphicon glyphicon-edit"></span>
	        		</a>
			</td>
			<td>
			<s:url action="delete_cliente" var="urlTag">
				<s:param name="idcliente" value="idcliente"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" class="delete" title="Haga clic aquí para eliminar este cliente">
          			<span class="glyphicon glyphicon-trash"></span>
        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

