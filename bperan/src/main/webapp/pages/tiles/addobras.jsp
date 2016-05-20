<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />


<s:form action="add_obras" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de obras">
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
						headerKey="None"
						headerValue="Seleccione el estado"
						placeholder="Estado"
						/>  
	
		<div class="btn-toolbar">
			  <div class="btn-group pull-left">
			    <button type="submit" class="btn btn-primary btn-sm">Guardar</button>
			    <s:url action="list_obras" var="urlTag" />
				<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
				   title="Haga clic aquí para volver al listado"> Cancelar
				</a>
			  </div>
		</div>				                   

</s:form>
	


<script type="text/javascript">
	$(".date-picker").datepicker();
	
	$(".date-picker").on("change", function () {
	    var id = $(this).attr("id");
	    var val = $("label[for='" + id + "']").text();
	    $("#msg").text(val + " changed");
	});
</script>