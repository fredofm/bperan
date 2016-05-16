<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />


<s:form action="view_obras" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de detalle de obras">
                <s:hidden name="idobra" />
                <div>
                	<label>Nombre Obra </label><s:property value="nombreobra" />    
                </div>    		
                <div>	
               		<label>Dirección </label><s:property value="direccion" />
                </div>
                <div>
                	<label>Latitud </label><s:property value="latitud" />  
                </div>
                <div>
                	<label>Longitud </label><s:property value="longitud" /> 
                </div>
                <div>
                	<label>Descripción </label><s:property value="descripcion" />  
                </div> 
                <div>                             
                	<label>Fecha Inicio </label><s:property value="fechaInicio" />
                </div> 
                <div>
                	<label>Fecha Fin </label><s:property value="fechaFin" /> 
                </div>  
                <div>      
                	<label>Estado </label><s:property value="estado" />		
                </div> 			                   
</s:form>

<div class="btn-toolbar">
	  <div class="btn-group pull-left">
	    <s:url action="list_obras" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm" href="<s:property value="#urlTag"/>"  
		   title="Haga clic aquí para volver al listado"> Volver
		</a>
	  </div>
</div>

<script type="text/javascript">
	$(".date-picker").datepicker();
	
	$(".date-picker").on("change", function () {
	    var id = $(this).attr("id");
	    var val = $("label[for='" + id + "']").text();
	    $("#msg").text(val + " changed");
	});
</script>