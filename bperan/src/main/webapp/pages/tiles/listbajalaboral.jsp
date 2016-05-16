<%@ taglib prefix="s" uri="/struts-tags"%>

<h2>Búsqueda de Bajas Laborales</h2>
<s:form action="buscar_bajalaboral" cssClass="well form-search" label="Formulario de búsqueda" theme="simple">
	<div class="form-group">
        <div class="row">
            <div class="col-xs-4">
            	<label for="buscar_bajalaboral_tipo" class="control-label">Tipo</label>
				<s:select 
                   		tooltip="Seleccione el tipo" 
                   		label="Tipo"
						list="#{'Enfermedad Común':'Enfermedad común', 'Enfermedad Laboral':'Enfermedad laboral', 'Accidente no laboral':'Accidente no laboral', 'Accidente laboral':'Accidente laboral'}" 
						name="tipo"  
						headerKey=""
						headerValue="Seleccione el tipo"
						placeholder="Tipo"
						cssClass="form-control"/> 
			</div>
		</div>
	</div>	
	<s:submit cssClass="btn btn-primary btn-sm" value="Buscar"/>
</s:form>

<div class="btn-toolbar">
  <div class="btn-group pull-right">
    <s:url action="prepare_bajalaboral" var="urlTag" />
	<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aquí para añadir una nueva baja laboral"> 
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nueva Baja Laboral
	</a>
  </div>
</div>

<h2>Listado de Bajas Laborales</h2>

<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre Empleado</th>
		<th>Fecha Inicio</th>
		<th>Fecha Fin</th>
		<th>Tipo</th>
		<th></th>
			
	</tr>
</thead>
<tbody>
	<s:iterator status="bajalaboral" value="%{#request.listaBajalaboral}">
		<tr>
			<td><s:property value="empleado.nombre" /></td>
			<td><s:date name="fechaInicio" format="dd/MM/yyyy"/></td>
			<td><s:date name="fechaFin" format="dd/MM/yyyy"/></td>
			<td><s:property value="tipo" /></td>
			
			<td>
				<s:url action="prepare_bajalaboral" var="urlTag">
					<s:param name="id" value="idbajalaboral"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para editar esta baja laboral">
	          			<span class="glyphicon glyphicon-edit"></span>
	        		</a>
			</td>
        	
			<td>
				<s:url action="delete_bajalaboral" var="urlTag">
					<s:param name="idbajalaboral" value="idbajalaboral"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aquí para eliminar esta baja laboral">
	          			<span class="glyphicon glyphicon-trash"></span>
	        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>

<div class="btn-toolbar">
	  <div class="btn-group pull-left">
	    <s:url action="list_bajalaboral" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Listado
		</a>
	  </div>
</div>


