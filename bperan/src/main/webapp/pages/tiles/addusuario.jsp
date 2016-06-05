<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form id ="usuarioForm" action="add_usuario" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de datos de usuario">
				<s:hidden name="idusuario" />
                <s:textfield
                        label="Nombre"
                        name="nombre"
                        tooltip="Introduzca el nombre del usuario" placeholder="Nombre"/>
                        
                <s:password 
                		name="password" 
                		key="password"
                        tooltip="Introduzca la password del usuario" placeholder="Password"/>

                <s:select
                        tooltip="Elija el rol del usuario"
                        label="Rol"
                        list="%{#request.listaRoles}"
                        listKey="idrole"
                        listValue="nombre"
                        name="role.idrole"
                        emptyOption="false"
                        headerKey=""
                        headerValue="Seleccione el rol del usuario"
                        placeholder="Rol"/>
    
	  	<button type="submit" class="btn btn-primary btn-sm">Guardar</button>
	    <s:url action="list_usuario" var="urlTag" />
		<a role="button" class="btn btn-danger btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Cancelar
		</a>           
	
</s:form>
<script type="text/javascript">
<!--
	$(document).ready(
			function() {

				$('#usuarioForm').validate(
						{
							lang: 'es',
							rules : {
								nombre : {
									required : true
								},
								password : {
									required : true
								},
								"role.idrole": {
									required: true
									}
							},
							highlight: function(element) {
						        $(element).closest('.form-group').addClass('has-error');
						    },
						    unhighlight: function(element) {
						        $(element).closest('.form-group').removeClass('has-error');
						    },
						    errorElement: 'span',
						    errorClass: 'help-block',
						    errorPlacement: function(error, element) {
						        if(element.parent('.input-group').length) {
						            error.insertAfter(element.parent());
						        } else {
						            error.insertAfter(element);
						        }
						    }
						});

			});
//-->
</script>


