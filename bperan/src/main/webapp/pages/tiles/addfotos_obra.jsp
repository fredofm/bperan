<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:iterator status="foto" value="%{#request.listaFotos}">
	<s:property value="idfoto" />, <s:property value="imagen" /><br/>
</s:iterator>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="uploadFoto" theme="bootstrap" cssClass="well form-horizontal" label="Formulario fotos" enctype="multipart/form-data" method="POST">
	<s:hidden name="idobra"/>
	<s:file name="userImage"/>
	<s:submit class="btn btn-primary btn-md" value="Enviar"/>
</s:form>