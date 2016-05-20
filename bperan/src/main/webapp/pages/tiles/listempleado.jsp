<%@ taglib prefix="s" uri="/struts-tags"%>

<h2>Búsqueda de Empleado</h2>
<s:form action="buscar_empleado" cssClass="well form-search" label="Formulario de búsqueda" theme="simple">
	<div class="form-group">
        <div class="row">
            <div class="col-xs-4">
            	<label for="buscar_empleado_nombre" class="control-label">Nombre</label>
				<s:textfield name="nombre" placeholder="Nombre Empleado" cssClass="form-control"/>
			</div>
			<div class="col-xs-4">
            	<label for="buscar_empleado_nif" class="control-label">NIF</label>
				<s:textfield name="nif" placeholder="NIF" cssClass="form-control"/>
			</div>
			<div class="col-xs-4">
            	<label for="buscar_empleado_obras.nombreobra" class="control-label">Nombre Obra</label>
				<s:textfield name="nombreobra" placeholder="Nombre Obra" cssClass="form-control"/>
			</div>
		    <div class="col-xs-4">
				<label for="buscar_empleado_estado" class="control-label">Estado</label>
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
				<label for="buscar_empleado_categoria" class="control-label">Categoría</label>
				<s:select 
                   		tooltip="Seleccione categoría" 
                   		label="Categoría"
						list="#{'Peón':'Peón', 'Albañil':'Albañil', 'Capataz':'Capataz'}" 
						name="categoria"  
						headerKey=""
						headerValue="Seleccione categoría"
						placeholder="Categoría"
						cssClass="form-control"/>  
			</div>
			              
		</div>
	</div>	
	<s:submit cssClass="btn btn-primary btn-sm" value="Buscar"/>
</s:form>

<div class="btn-toolbar">
  <div class="btn-group pull-right">
    <s:url action="prepare_empleado" var="urlTag" />
	<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aquí para añadir un nuevo empleado"> 
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Empleado
	</a>
  </div>
</div>

<h2>Listado de Empleados</h2>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre</th>
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
			<td> <s:property value="nombre" /></td>
			<td><s:property value="apellidos" /></td>
			<td><s:property value="nif" /></td>
			<td><s:property value="telefono" /></td>
			<td><s:property value="numseguridadsocial" /></td>
			<td><s:property value="categoria" /></td>
			<td><s:date name="fechaalta" format="dd/MM/yyyy"/></td>
			<td><s:property value="estado" /></td>
			<td><s:property value="obras.nombreobra" /></td>
			<td>
			
			<td>
				<s:url action="view_empleado" var="urlTag">
						<s:param name="id" value="idempleado"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para ver el detalle de este empleado">
					    <span class="glyphicon glyphicon-list-alt"></span>   
					</a>
			</td>
			<td>
				<s:url action="prepare_empleado" var="urlTag">
					<s:param name="id" value="idempleado"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para editar este empleado">
	          			<span class="glyphicon glyphicon-edit"></span>
	        		</a>
			</td>
			
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

<div class="btn-toolbar">
	  <div class="btn-group pull-left">
	    <s:url action="list_empleado" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Listado
		</a>
	  </div>
</div>
