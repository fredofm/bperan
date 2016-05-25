<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<div class="panel panel-default">
	<div class="panel-heading clearfix">
		    	<h3 class="panel-title">Fotos Obra</h3>
	</div>
		 <div class="panel-body">
			<div class="row">
				<s:iterator status="foto" value="%{#request.listaFotos}">
					<div class="col-md-4 thumb">
						<div class="thumbnail" >
							<s:url action="deleteFoto" var="url" escapeAmp="false">
								<s:param name="id" value="idfoto"/>
								<s:param name="idobra" value="idobra"/>
							</s:url>					
							<a class="close delete" href="<s:property value="#url"/>">
		                    	x 
		                    </a>
		                    <s:url action="displayFoto" var="url">
								<s:param name="id" value="idfoto"/>
							</s:url>
		                    <img class="img-responsive" src="<s:property value="#url"/>"/>
	                    </div>
					</div>
				</s:iterator>
			</div>
		</div>
</div>


<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="uploadFoto" theme="bootstrap" cssClass="well form-horizontal" label="Formulario fotos" enctype="multipart/form-data" method="POST">
	<s:hidden name="idobra"/>
	<sec:authorize access="hasRole('admin')">
		<s:file name="userImage"/>
		<s:submit class="btn btn-primary btn-sm" value="Enviar"/>
	</sec:authorize>
	<s:url action="list_obras" var="urlTag" />
		<a role="button" class="btn btn-danger btn-sm"
			href="<s:property value="#urlTag"/>"
			title="Haga clic aquí para volver al listado"> Cancelar </a>
</s:form>
