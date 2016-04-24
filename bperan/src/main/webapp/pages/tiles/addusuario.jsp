<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_usuario" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de usuarios">
                <s:textfield
                        label="Nombre"
                        name="nombre"
                        tooltip="Introduzca el nombre del usuario"/>
                        
                <s:textfield
                        label="Password"
                        name="password"
                        tooltip="Introduzca la password del usuario"/>

                <s:select
                        tooltip="Elija el rol del usuario"
                        label="Rol"
                        list="%{#request.listaRoles}"
                        listKey="idrole"
                        listValue="nombre"
                        name="idrole"
                        emptyOption="false"
                        headerKey="None"
                        headerValue="None"/>
	<button type="submit" class="btn btn-primary">Submit</button>
</s:form>