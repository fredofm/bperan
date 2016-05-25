<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form id="vacacionesForm"  action="add_vacaciones" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de vacaciones">
				<s:hidden name="idvacaciones" />
                             
                  <s:select
                        tooltip="Elija el empleado"
                        label="Empleado"
                        list="%{#request.listaEmpleados}"
                        listKey="idempleado"
                        listValue="nombre"
                        name="empleado.idempleado"
                        emptyOption="false"
                        headerKey=""
                        headerValue="Seleccione el empleado"
                        placeholder="Empleado"/>
                                           
                  <s:textfield
                        label="Fecha Inicio"
                        name="fechaInicio"
                        tooltip="Introduzca la fecha de inicio de las vacaciones con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de inicio dd/mm/aaaa"
                        cssClass="date-picker" />
                        
                  <s:textfield
                        label="Fecha Fin"
                        name="fechaFin"
                        tooltip="Introduzca la fecha de fin de las vacaciones con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de fin dd/mm/aaaa"
                        cssClass="date-picker" />
    
	<button type="submit" class="btn btn-primary btn-sm">Guardar</button> 
	<s:url action="list_vacaciones" var="urlTag" />
		   <a role="button" class="btn btn-danger btn-sm" href="<s:property value="#urlTag"/>"  
		   		title="Haga clic aquí para volver al listado"> Cancelar
		   </a>                                  
	
</s:form>

<script type="text/javascript">
<!--
	$(document).ready(
			function() {

				$('#vacacionesForm').validate(
						{
							lang: 'es',
							rules : {
								fechaInicio : {
									required : true
								},
								fechaFin : {
									required : true
								},
								"empleado.idempleado": {
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
