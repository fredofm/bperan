<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_empleado" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creaci�n de empleados">
				<s:hidden name="idempleado" />
                <s:textfield
                        label="Nombre"
                        name="nombre"
                        tooltip="Introduzca el nombre del empleado" placeholder="Nombre"/>
                        
                <s:textfield
                        label="Apellidos"
                        name="apellidos"
                        tooltip="Introduzca los apellidos del empleado" placeholder="Apellidos"/>
                        
                <s:textfield
                        label="NIF"
                        name="nif"
                        tooltip="Introduzca el nif del empleado" placeholder="NIF"/>
                        
                <s:textfield
                        label="Fecha Nacimiento"
                        name="fechanacimiento"
                        tooltip="Introduzca la fecha de nacimiento del empleado con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de nacimineto dd/mm/aaaa"
                        cssClass="date-picker" />
                        
                <s:textfield
                        label="Tel�fono"
                        name="telefono"
                        tooltip="Introduzca el tel�fono del empleado" placeholder="Tel�fono"/>
                 
                 <s:textfield
                        label="Direcci�n"
                        name="direccion"
                        tooltip="Introduzca la direccion del empleado" placeholder="Direcci�n"/>
                 
                 <s:textfield
                        label="Poblaci�n"
                        name="poblacion"
                        tooltip="Introduzca la poblacion del empleado" placeholder="Poblaci�n"/>
                 
                 <s:textfield
                        label="Provincia"
                        name="provincia"
                        tooltip="Introduzca la provincia del empleado" placeholder="Provincia"/>
                        
                 <s:textfield
                        label="C�digo Postal"
                        name="codigopostal"
                        tooltip="Introduzca el c�digo postal del empleado" placeholder="C�digo Postal"/>
                        
                  <s:textfield
                        label="Nacionalidad"
                        name="nacionalidad"
                        tooltip="Introduzca la nacionalidad del empleado" placeholder="Nacionalidad"/>
                        
                  <s:textfield
                        label="N� Seguridad Social"
                        name="numseguridadsocial"
                        tooltip="Introduzca el numseguridadsocial del empleado" placeholder="N� Seguridad Social"/>
                        
                  <s:select 
                   		tooltip="Seleccione el tipo de contrato" 
                   		label="Tipo de Contrado"
						list="#{'Fin de Obra':'Fin de Obra', 'Temporal':'Temporal', 'Indefinido':'Indefinido', 'Fijo Discont�nuo':'Fijo Discont�nuo'}" 
						name="tipocontrato"  
						headerKey="None"
						headerValue="Seleccione tipo de contrado"
						placeholder="Tipo de Contrado"
						/> 
                        
                  <s:textfield
                        label="Fecha Alta"
                        name="fechaalta"
                        tooltip="Introduzca la fecha de alta del empleado con formato dd/mm/aaaa" placeholder="Pulse para seleccionar la fecha de alta dd/mm/aaaa"
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
                        
                  <s:textfield
                        label="Categor�a"
                        name="categoria"
                        tooltip="Introduzca la categor�a del empleado" placeholder="Categor�a"/> 
                        
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