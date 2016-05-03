<%@ taglib prefix="s" uri="/struts-tags"%>

<h1>Listado de Obras</h1>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre Obra</th>
		<th>Ubicación</th>
		<th>Descripción</th>
		<th>Coste Total</th>
		<th>Fecha Inicio</th>
		<th>Fecha Fin</th>
		<th>Estado</th>
		<th></th>
	</tr>
</thead>
<tbody>
	<s:iterator status="obra" value="%{#request.listaObras}">
		<tr>
			<td><s:property value="nombreobra" /></td>
			<td><s:property value="ubicacion" /></td>
			<td><s:property value="descripcion" /></td>
			<td><s:property value="costeTotal" /></td>
			<td><s:date name="fechaInicio" format="dd/MM/yyyy hh:mm:ss"/></td>
			<td><s:date name="fechaFin" format="dd/MM/yyyy hh:mm:ss"/></td>
			<td><s:property value="estado" /></td>
			<td>
			<s:url action="delete_obras" var="urlTag">
				<s:param name="idobra" value="idobra"/>
			</s:url>
				<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para eliminar esta obra">
          			<span class="glyphicon glyphicon-trash"></span>
        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

<s:url action="prepare_obras" var="urlTag" />
<a role="button" class="btn btn-primary" href="<s:property value="#urlTag"/>"> 
	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo
</a>