<%@ taglib prefix="s" uri="/struts-tags"%>

<h2>Búsqueda de Presupuestos</h2>
<s:form action="buscar_presupuesto" cssClass="well form-search" label="Formulario de búsqueda" theme="simple">
	<div class="form-group">
        <div class="row">
            <div class="col-xs-4">
            	<label for="buscar_presupuesto_obras.nombreobra" class="control-label">Nombre Obra</label>
				<s:textfield name="obras.nombreobra" placeholder="Nombre Obra" cssClass="form-control"/>
			</div>
			 <div class="col-xs-4">
            	<label for="buscar_presupuesto_cliente.nombreempresa" class="control-label">Nombre Cliente</label>
				<s:textfield name="cliente.nombreempresa" placeholder="Nombre Cliente" cssClass="form-control"/>
			</div>
			<div class="col-xs-4">
				<label for="buscar_presupuesto_estado" class="control-label">Estado</label>
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
		</div>
	</div>	
	<s:submit cssClass="btn btn-primary btn-sm" value="Buscar"/>
	<s:url action="list_presupuesto" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Limpiar
		</a>
</s:form>

<div class="btn-toolbar">
  <div class="btn-group pull-right">
    <s:url action="prepare_presupuesto" var="urlTag" />
	<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aquí para añadir un nuevo presupuesto"> 
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Presupuesto
	</a>
  </div>
</div>

<h2>Listado de Presupuestos</h2>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Cliente</th>
		<th>Obra</th>
		<th>Coste Total</th>
		<th>Fecha Inicio</th>
		<th>Fecha Fin</th>
		<th>Estado</th>
		<th></th>
	</tr>
</thead>
<tbody>
	<s:iterator status="presupuesto" value="%{#request.listaPresupuestos}">
		<tr>
			<td><s:property value="cliente.nombreempresa" /></td>
			<td><s:property value="obras.nombreobra" /></td>
			<td><s:property value="costeTotal" /></td>
			<td><s:date name="fechaInicio" format="dd/MM/yyyy"/></td>
			<td><s:date name="fechaFin" format="dd/MM/yyyy"/></td>
			<td><s:property value="estado" /></td>
			
			<td>
				<s:url action="view_presupuesto" var="urlTag">
					<s:param name="id" value="idpresupuesto"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para ver el detalle de este presupuesto">
					    <span class="glyphicon glyphicon-list-alt"></span>     
					</a>
			</td>
			
			<td>
				<s:url action="prepare_presupuesto" var="urlTag">
					<s:param name="id" value="idpresupuesto"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para editar este presupuesto">
	          			<span class="glyphicon glyphicon-edit"></span>
	        		</a>
			</td>
        	
			<td>
				<s:url action="delete_presupuesto" var="urlTag">
					<s:param name="idpresupuesto" value="idpresupuesto"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para eliminar este presupuesto">
	          			<span class="glyphicon glyphicon-trash"></span>
	        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

