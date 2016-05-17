<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />


<s:form action="view_presupuesto" theme="bootstrap"
	cssClass="well form-horizontal" label="Formulario de detalle del presupuesto">
	<s:hidden name="idpresupuesto" />
	<div class="row">
		<div class="col-md-12">
			<h4>
				<strong>Datos Presupuesto</strong>
			</h4>
			<div>
				<label>Nombre Cliente </label><s:property value="cliente.nombreempresa" />
			</div>
			<div>
				<label>Nombre Obra </label><s:property value="obras.nombreobra" />
			</div>
			<div>
				<label>Coste Total </label><s:property value="costeTotal" />
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
			
		</div>	
	</div>
</s:form>

<div class="btn-toolbar">
	<div class="btn-group pull-left">
		<s:url action="list_presupuesto" var="urlTag" />
		<a role="button" class="btn btn-primary btn-sm"
			href="<s:property value="#urlTag"/>"
			title="Haga clic aquí para volver al listado"> Volver </a>
	</div>
</div>
