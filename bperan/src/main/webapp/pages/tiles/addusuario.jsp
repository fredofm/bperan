<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_usuario" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de usuarios">
				<s:hidden name="idusuario" />
                <s:textfield
                        label="Nombre"
                        name="nombre"
                        tooltip="Introduzca el nombre del usuario" placeholder="Nombre"/>
                        
                <s:textfield
                        label="Password"
                        name="password"
                        tooltip="Introduzca la password del usuario" placeholder="Password"/>

                <s:select
                        tooltip="Elija el rol del usuario"
                        label="Rol"
                        list="%{#request.listaRoles}"
                        listKey="idrole"
                        listValue="nombre"
                        name="role.idrole"
                        emptyOption="false"
                        headerKey="None"
                        headerValue="None"
                        placeholder="Rol"/>
	<button type="submit" class="btn btn-primary">Guardar</button>
</s:form>