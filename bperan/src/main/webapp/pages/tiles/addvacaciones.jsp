<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_vacaciones" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creaci�n de vacaciones">
				<s:hidden name="idvacaciones" />
                             
                  <s:select
                        tooltip="Elija el empleado"
                        label="Empleado"
                        list="%{#request.listaEmpleados}"
                        listKey="idempleado"
                        listValue="nombre"
                        name="empleado.idempleado"
                        emptyOption="false"
                        headerKey="None"
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
                                         
	<button type="submit" class="btn btn-primary">Guardar</button>
</s:form>

<script type="text/javascript">
	$(".date-picker").datepicker();
	
	$(".date-picker").on("change", function () {
	    var id = $(this).attr("id");
	    var val = $("label[for='" + id + "']").text();
	    $("#msg").text(val + " changed");
	});
</script>