<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />


<s:form id="obrasForm"  action="add_obras" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de datos de obra">
                <s:hidden name="idobra" />
                <s:textfield
                        label="Nombre Obra"
                        name="nombreobra"
                        tooltip="Introduzca el nombre de la obra" placeholder="Nombre Obra"/>
                        
                <s:textfield
                        label="Dirección"
                        name="direccion"
                        tooltip="Introduzca la dirección de la obra" placeholder="Dirección"/>
                        
                  <s:textfield
                        label="Latitud"
                        name="latitud"
                        tooltip="Introduzca la latitud de la obra" placeholder="Latitud"/>
                        
                  <s:textfield
                        label="Longitud"
                        name="longitud"
                        tooltip="Introduzca la Longitud de la obra" placeholder="Longitud"/>
                      
                 <s:textfield
                        label="Descripción"
                        name="descripcion"
                        tooltip="Introduzca una descripción de la obra" placeholder="Descripción"/>
                                             
                  <s:textfield
                        label="Fecha Inicio"
                        name="fechaInicio"
                        tooltip="Introduzca la fecha de inicio de la obra con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fechde inicio a dd/mm/aaaa"
                        cssClass="date-picker"/>
                  
                  <s:textfield
	                        label="Fecha Fin"
	                        name="fechaFin"
	                        tooltip="Introduzca la fecha de fin de la obra con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de fin dd/mm/aaaa"
							cssClass="date-picker" />
					                       
                  <s:select 
                   		tooltip="Seleccione el estado" 
                   		label="Estado"
						list="#{'Activo':'Activo', 'NoActivo':'NoActivo'}" 
						name="estado"  
						headerKey=""
						headerValue="Seleccione el estado"
						placeholder="Estado"
						/>  
	
		
	<button type="submit" class="btn btn-primary btn-sm">Guardar</button>
	<s:url action="list_obras" var="urlTag" />
		<a role="button" class="btn btn-danger btn-sm" href="<s:property value="#urlTag"/>"  
		  title="Haga clic aquí para volver al listado"> Cancelar
		</a>
		
</s:form>
	
<script type="text/javascript">
<!--
	$(document).ready(
			function() {

				$('#obrasForm').validate(
						{
							lang: 'es',
							rules : {
								nombreobra : {
									required: true
								},
								latitud : {
									number : true
								},
								longitud : {
									number : true
								},
								direccion : {
									required: true
								},
								fechaInicio : {
									required : true
								},
								fechaFin : {
									required : true
								},
								estado : {
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