<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form id="presupuestoForm" action="add_presupuesto" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de presupuestos">
				<s:hidden name="idpresupuesto" />
               
                 <s:select
                        tooltip="Elija el cliente"
                        label="Cliente"
                        list="%{#request.listaCliente}"
                        listKey="idcliente"
                        listValue="nombreempresa"
                        name="cliente.idcliente"
                        emptyOption="false"
                        headerKey=""
                        headerValue="Seleccione el cliente"
                        placeholder="Cliente"/>
                 <s:select
                        tooltip="Elija la obra"
                        label="Obra"
                        list="%{#request.listaObras}"
                        listKey="idobra"
                        listValue="nombreobra"
                        name="obras.idobra"
                        emptyOption="false"
                        headerKey=""
                        headerValue="Seleccione la obra"
                        placeholder="Obra"/>
                  
                   <s:textfield
                        label="Coste Total"
                        name="costeTotal"
                        tooltip="Introduzca el coste total del presupuesto" placeholder="Coste Total"/>   
                                      
                  <s:textfield
                        label="Fecha Inicio"
                        name="fechaInicio"
                        tooltip="Introduzca la fecha de inicio de la obra con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de inicio dd/mm/aaaa"
                        cssClass="date-picker" />
                        
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
	    <s:url action="list_presupuesto" var="urlTag" />
		<a role="button" class="btn btn-danger btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Cancelar
		</a>

</s:form>

<script type="text/javascript">
<!--
	$(document).ready(
			function() {

				$('#presupuestoForm').validate(
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
								"obras.idobra": {
									required: true
									}
								,
								"cliente.idcliente": {
									required: true
									}
								,
								costeTotal: {
									number: true,
									required: true
								}
								,
								estado: {
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