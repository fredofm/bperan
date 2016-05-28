<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="container">

<div class="row">

<div class="col-md-4"></div>
<div class="col-md-4">

<div class="panel panel-info">
	<div class="panel-heading clearfix">
    	<h3 class="panel-title">Inicio de Sesión</h3>
    </div>
    <div class="panel-body">
	<s:form action="j_spring_security_check"  method="post" id="homeLogin" theme="simple">
		<div class="form-group">
			<s:textfield cssClass="form-control" id="loginid" label="Usuario" placeholder="Usuario" name="username" value=""/>
		</div>
		<div class="form-group">
			<s:password cssClass="form-control" id="pwd" label="Password" placeholder="Password" name="password" value="" />
		</div>
		<s:submit class="btn btn-success btn-md btn-block" value="Login" />			
	</s:form>
	</div>
</div>

</div>
<div class="col-md-4"></div>

</div>

</div>