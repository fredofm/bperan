<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
			    	<h3 class="panel-title">Datos Usuario</h3>
			    </div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-12">
							<div class="row">
					            <div class="col-md-4">Nombre Usuario</div>
					            <div class="col-md-8"><s:property value="nombre" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Password</div>
					            <div class="col-md-8"><s:property value="password" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Role</div>
					            <div class="col-md-8"><s:property value="role.nombre" /></div>
					        </div>
					        <div class="row">
					            <div class="col-md-4">Fecha creación</div>
					            <div class="col-md-8"><s:date name="fechacreacion" format="dd/MM/yyyy"/></div>
					        </div>
				        </div>
			        </div>
	       		</div>
			</div>
		</div>
</div>


<div class="btn-toolbar">
		<div class="btn-group pull-left">
			<s:url action="list_usuario" var="urlTag" />
			<a role="button" class="btn btn-primary btn-sm"
				href="<s:property value="#urlTag"/>"
				title="Haga clic aquí para volver al listado"> Volver </a>
		</div>
</div>




