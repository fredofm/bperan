<%@ taglib prefix="s" uri="/struts-tags"%>

<h2>B�squeda de Obras</h2>
<s:form action="buscar_obras" cssClass="well form-search" label="Formulario de b�squeda" theme="simple">
	<div class="form-group">
        <div class="row">
            <div class="col-xs-4">
            	<label for="buscar_obras_nombreobra" class="control-label">Nombre</label>
				<s:textfield name="nombreobra" placeholder="Nombre Obra" cssClass="form-control"/>
			</div>
	 
			<div class="col-xs-4">
				<label for="buscar_obras_estado" class="control-label">Estado</label>
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
				<label for="buscar_obras_direccion" class="control-label">Direcci�n</label>
				<s:textfield name="direccion" placeholder="Direcci�n de la Obra" cssClass="form-control"/>
			</div>
		</div>
	</div>	
	<s:submit cssClass="btn btn-primary btn-sm" value="Buscar"/>
</s:form>

<div class="btn-toolbar">
  <div class="btn-group pull-right">
    <s:url action="prepare_obras" var="urlTag" />
	<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  title="Haga clic aqu� para a�adir una nueva obra"> 
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Nueva Obra
	</a>
  </div>
</div>

<h2>Listado de Obras</h2>
<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Nombre</th>
		<th>Direcci�n</th>
		<th>Descripci�n</th>
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
			<td><s:property value="direccion" /></td>
			<td><s:property value="descripcion" /></td>
			<td><s:date name="fechaInicio" format="dd/MM/yyyy"/>
			</td>
			<td><s:date name="fechaFin" format="dd/MM/yyyy"/>
			</td>
			<td><s:property value="estado" /></td>
			
			<td>
				<s:url action="displayFotos" var="urlTag">
					<s:param name="idobra" value="idobra"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para editar las fotos de esta obra">
	          			<span class="glyphicon glyphicon-camera"></span>
	        		</a>
			</td>
			
			<td>
				<s:url action="prepare_obras" var="urlTag">
					<s:param name="id" value="idobra"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para editar esta obra">
	          			<span class="glyphicon glyphicon-edit"></span>
	        		</a>
			</td>
        	
			<td>
				<s:url action="delete_obras" var="urlTag">
					<s:param name="idobra" value="idobra"/>
				</s:url>
					<a href="<s:property value="#urlTag"/>" title="Haga clic aqu� para eliminar esta obra">
	          			<span class="glyphicon glyphicon-trash"></span>
	        		</a>
			</td>
		</tr>
	</s:iterator>
</tbody>
</table>