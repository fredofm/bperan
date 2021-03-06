<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="buscar_empleado" cssClass="well form-search" label="Formulario de b�squeda" theme="simple">
<h2>B�squeda de Empleado</h2>
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
				<s:textfield name="obras.nombreobra" placeholder="Nombre Obra" cssClass="form-control"/>
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
				<label for="buscar_empleado_categoria" class="control-label">Categor�a</label>
				<s:select 
                   		tooltip="Seleccione categor�a" 
                   		label="Categor�a"
						list="#{'Pe�n':'Pe�n', 'Alba�il':'Alba�il', 'Capataz':'Capataz'}" 
						name="categoria"  
						headerKey=""
						headerValue="Seleccione categor�a"
						placeholder="Categor�a"
						cssClass="form-control"/>  
			</div>
			              
		</div>
	</div>	
	<s:submit cssClass="btn btn-primary btn-sm" value="Buscar"/>
	<s:url action="list_empleado" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aqu� para volver al listado"> Limpiar
		</a>
</s:form>

<div class="panel panel-info">
	<div class="panel-body">
		<div class="row">
			<div class="col-md-10 "> 	
				<h2>Listado de Empleados</h2>
			</div>
			<div class="col-md-2 right">
				<div class="btn-toolbar">
				  <div class="btn-group pull-right">
				    <s:url action="prepare_empleado" var="urlTag" />
					<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aqu� para a�adir un nuevo empleado"> 
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Empleado
					</a>
				  </div>
				</div>
			</div>
		</div>

		<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Apellidos</th>
				<th>NIF</th>
				<th>Tel�fono</th>
				<th>N�mero Seguridad Social</th>
				<th>Categor�a</th>
				<th>Fecha Alta</th>
				<th>Estado</th>
				<th>Obra</th>
				<th></th>
				<th></th>
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
					<td></td>
					
					<td>
						<s:url action="view_empleado" var="urlTag">
								<s:param name="id" value="idempleado"/>
						</s:url>
							<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para ver el detalle de este empleado">
							    <span class="glyphicon glyphicon-list-alt"></span>   
							</a>
					</td>
					<td>
						<s:url action="prepare_empleado" var="urlTag">
							<s:param name="id" value="idempleado"/>
						</s:url>
							<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para editar este empleado">
			          			<span class="glyphicon glyphicon-edit"></span>
			        		</a>
					</td>
					
					<td>
					<s:url action="delete_empleado" var="urlTag">
						<s:param name="idempleado" value="idempleado"/>
					</s:url>
						<a href="<s:property value="#urlTag"/>" class="delete" title="Haga clic aqu� para eliminar este empleado">
		          			<span class="glyphicon glyphicon-trash"></span>
		        		</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
		</table>
	</div>
</div>
		
