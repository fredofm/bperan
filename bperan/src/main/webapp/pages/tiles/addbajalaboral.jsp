<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form id="bajalaboralForm" action="add_bajalaboral" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de baja laboral">
				<s:hidden name="idbajalaboral" />
                             
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
                        tooltip="Introduzca la fecha de inicio de la baja laboral con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de inicio dd/mm/aaaa"
                        cssClass="date-picker" />
                        
                  <s:textfield
                        label="Fecha Fin"
                        name="fechaFin"
                        tooltip="Introduzca la fecha de fin de la baja laboral con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de fin dd/mm/aaaa"
                        cssClass="date-picker" />
                        
                  <s:select 
                   		tooltip="Seleccione el tipo" 
                   		label="Tipo"
						list="#{'Enfermedad Común':'Enfermedad común', 'Enfermedad Laboral':'Enfermedad laboral', 'Accidente no laboral':'Accidente no laboral', 'Accidente laboral':'Accidente laboral'}" 
						name="tipo"  
						headerKey=""
						headerValue="Seleccione el tipo"
						placeholder="Tipo"
						/> 
                 	
	 <button type="submit" class="btn btn-primary btn-sm">Guardar</button>
	 <s:url action="list_bajalaboral" var="urlTag" />
			<a role="button" class="btn btn-danger btn-sm" href="<s:property value="#urlTag"/>"  
			   title="Haga clic aquí para volver al listado"> Cancelar
			</a>
	
</s:form>

<script type="text/javascript">
<!--
	$(document).ready(
			function() {

				$('#bajalaboralForm').validate(
						{
							lang: 'es',
							rules : {
								fechaInicio : {
									required : true,
									date : true
								},
								fechaFin : {
									required : true,
									date : true
								},
								"empleado.idempleado": {
									required: true
								},
								tipo : {
									required : true
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
