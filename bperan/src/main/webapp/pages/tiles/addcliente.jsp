<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form id="clienteForm" action="add_cliente" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de clientes">
                <s:hidden name="idcliente" />
                <s:textfield
                        label="Nombre Cliente"
                        name="nombreempresa"
                        tooltip="Introduzca el nombre del cliente" placeholder="Nombre Cliente"/>
                        
                <s:textfield
                        label="CIF/NIF"
                        name="cifNif"
                        tooltip="Introduzca el CIF/NIF del cliente" placeholder="CIF/NIF"/>
                      
                 <s:textfield
                        label="Teléfono"
                        name="telefono"
                        tooltip="Introduzca el teléfono del cliente" placeholder="Teléfono"/>
                       
                  <s:textfield
                        label="FAX"
                        name="fax"
                        tooltip="Introduzca el FAX del cliente" placeholder="FAX"/>
                       
                  <s:textfield
                        label="Dirección"
                        name="direccion"
                        tooltip="Introduzca la dirección del cliente" placeholder="Dirección"/>
                        
                  <s:textfield
                        label="Población"
                        name="poblacion"
                        tooltip="Introduzca la población del cliente" placeholder="Población"/>
                        
                   <s:textfield
                        label="Provincia"
                        name="provincia"
                        tooltip="Introduzca la provincia del cliente" placeholder="Provincia"/>
                    
                    <s:textfield
                        label="Código Postal"
                        name="codigopostal"
                        tooltip="Introduzca el código postal del cliente" placeholder="Código Postal"/>
                       
                    <s:textfield
                        label="Email"
                        name="emial"
                        tooltip="Introduzca el email del cliente" placeholder="Email"/>
                        
                    <s:select 
                   		tooltip="Seleccione el estado" 
                   		label="Estado"
						list="#{'Activo':'Activo', 'NoActivo':'NoActivo'}" 
						name="estado"  
						headerKey=""
						headerValue="Seleccione el estado"
						placeholder="Estado"
						/> 
					
					 <s:select
                        tooltip="Elija el tipo de usuario del cliente"
                        label="Usuario"
                        list="%{#request.listaUsuarios}"
                        listKey="idusuario"
                        listValue="nombre"
                        name="usuario.idusuario"
                        emptyOption="false"
                        headerKey=""
                        headerValue="Seleccione el usuario"
                        placeholder="Usuario"/>
	          
	 	<button type="submit" class="btn btn-primary btn-sm">Guardar</button>    
	    <s:url action="list_cliente" var="urlTag" />
		<a role="button" class="btn btn-danger btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Cancelar
		</a>
	  
</s:form>

<script type="text/javascript">
<!--
	$(document).ready(
			function() {

				$('#clienteForm').validate(
						{
							lang: 'es',
							rules : {
								nombreempresa : {
									required : true
								},
								 cifNif: {
									required : true
								},
								telefono: {
									required: true,
									number : true
								},
								direccion: {
									required: true
								},
								poblacion: {
									required: true
								},
								provincia: {
									required: true
								},
								codigopostal: {
									required: true
								},
								estado: {
									required: true
								},
								"usuario.idusuario": {
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

				$(".date-picker").datepicker();

				$(".date-picker").on("change", function() {
					var id = $(this).attr("id");
					var val = $("label[for='" + id + "']").text();
					$("#msg").text(val + " changed");
				});
			});
//-->
</script>

