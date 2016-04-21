<%@ taglib prefix="s" uri="/struts-tags"%>

<table class="table table-striped">
	<tr>
		<td>Nombre</td>
		<td>Fecha Creación</td>
	</tr>

	<s:iterator status="usuario" value="listaUsuarios">
		<tr>
			<td><s:property value="nombre" /></td>
			<td><s:property value="fechacreacio" /></td>
		</tr>
	</s:iterator>

</table>

<s:url action="addUsuarioAction" var="urlTag" />
<a role="button" class="btn btn-primary" href="<s:property value="#urlTag"/>"> 
	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo
</a>