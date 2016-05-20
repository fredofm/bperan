<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:iterator status="foto" value="%{#request.listaFotos}">
	<s:url action="displayFoto" var="url">
		<s:param name="id" value="idfoto"/>
	</s:url>
	<img src="<s:property value="#url"/>"/>
</s:iterator>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="uploadFoto" theme="bootstrap" cssClass="well form-horizontal" label="Formulario fotos" enctype="multipart/form-data" method="POST">
	<s:hidden name="idobra"/>
	<s:file name="userImage"/>
	<s:submit class="btn btn-primary btn-sm" value="Enviar"/>
	<s:url action="list_obras" var="urlTag" />
		<a role="button" class="btn btn-danger btn-sm" href="<s:property value="#urlTag"/>"
			title="Haga clic aquí para volver al listado"> Cancelar </a>
</s:form>
