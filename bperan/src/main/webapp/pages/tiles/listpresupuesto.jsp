<%@ taglib prefix="s" uri="/struts-tags"%>

<h1>Listado de Presupuestos</h1>

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

<s:url action="prepare_presupuesto" var="urlTag" />
<a role="button" class="btn btn-primary" href="<s:property value="#urlTag"/>"> 
	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Presupuesto
</a>