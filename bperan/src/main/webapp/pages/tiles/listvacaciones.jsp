<%@ taglib prefix="s" uri="/struts-tags"%>

<h2>B�squeda de Vacaciones</h2>

<div class="btn-toolbar">
  <div class="btn-group pull-right">
    <s:url action="prepare_vacaciones" var="urlTag" />
	<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aqu� para a�adir nuevas vacaciones"> 
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevas Vacaciones
	</a>
  </div>
</div>


<h2>Listado de Vacaciones</h2>
<table class="table table-striped table-hover">
<thead>
	<tr>
	    <th>Nombre Empleado</th>
		<th>Apellidos</th>
		<th>NIF</th>
		<th>Fecha Inicio</th>
		<th>Fecha Fin</th>
		<th></th>
	</tr>
</thead>
<tbody>
	<s:iterator status="vacaciones" value="%{#request.listaVacaciones}">
		<tr>
			<td><s:property value="empleado.nombre" /></td>
			<td><s:property value="empleado.apellidos" /></td>
			<td><s:property value="empleado.nif" /></td>
			<td><s:date name="fechaInicio" format="dd/MM/yyyy"/>
			</td>
			<td><s:date name="fechaFin" format="dd/MM/yyyy"/>
			</td>
			
			<td>
				<s:url action="prepare_vacaciones" var="urlTag">
					<s:param name="id" value="idvacaciones"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para editar">
	          			<span class="glyphicon glyphicon-edit"></span>
	        		</a>
			</td>
        	
			<td>
				<s:url action="delete_vacaciones" var="urlTag">
					<s:param name="idvacaciones" value="idvacaciones"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para eliminar">
	          			<span class="glyphicon glyphicon-trash"></span>
	        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

<div class="btn-toolbar">
	  <div class="btn-group pull-left">
	    <s:url action="list_vacaciones" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aqu� para volver al listado"> Listado
		</a>
	  </div>
</div>