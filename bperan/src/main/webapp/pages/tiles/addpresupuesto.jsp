<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_presupuesto" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de presupuestos">
				<s:hidden name="idpresupuesto" />
               
                 <s:select
                        tooltip="Elija el cliente"
                        label="Cliente"
                        list="%{#request.listaCliente}"
                        listKey="idcliente"
                        listValue="nombreempresa"
                        name="cliente.idcliente"
                        emptyOption="false"
                        headerKey="None"
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
                        headerKey="None"
                        headerValue="Seleccione la obra"
                        placeholder="Obra"/>
                  
                   <s:textfield
                        label="Coste Total"
                        name="costeTotal"
                        tooltip="Introduzca el coste total del presupuesto" placeholder="Coste Total"/>
                 
                  <s:textfield
                        label="Fecha Inicio"
                        name="fechaInicio"
                        tooltip="Introduzca la fecha de inicio de la obra con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de fin dd/mm/aaaa"
                        cssClass="date-picker" />
                        
                  <s:textfield
                        label="Fecha Fin"
                        name="fechaFin"
                        tooltip="Introduzca la fecha de fin de la obra con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de inicio dd/mm/aaaa"
                        cssClass="date-picker" />
                        
                  <s:select 
                   		tooltip="Seleccione el estado" 
                   		label="Estado"
						list="#{'AA':'Activo', 'NA':'NoActivo'}" 
						name="estado"  
						headerKey="None"
						headerValue="Seleccione el estado"
						placeholder="Estado"
						/> 
                 
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