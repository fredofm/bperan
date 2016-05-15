<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!-- Static navbar -->
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<s:url action="welcome" var="urlTag" />
			<a class="navbar-brand" href="<s:property value="#urlTag"/>">Bahía
				de Perán</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><s:url action="list_cliente" var="urlTag" /> <a
					href="<s:property value="#urlTag"/>">Clientes</a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Empleados <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><s:url action="list_empleado" var="urlTag" /> <a
							href="<s:property value="#urlTag"/>">Listado Empleados</a></li>
						<li><s:url action="list_vacaciones" var="urlTag" /> <a
							href="<s:property value="#urlTag"/>">Listado Vacaciones</a></li>
							<li><s:url action="list_bajalaboral" var="urlTag" /> <a
							href="<s:property value="#urlTag"/>">Listado Bajas Laborales</a></li>
					</ul></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Obras <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><s:url action="list_obras" var="urlTag" /> <a
							href="<s:property value="#urlTag"/>">Listado Obras</a></li>
						<li><s:url action="list_presupuesto" var="urlTag" /> <a
							href="<s:property value="#urlTag"/>">Listado Presupuestos</a></li>
					</ul></li>
				<sec:authorize access="hasRole('admin')">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Admin <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><s:url action="list_usuario" var="urlTag" /> <a
								href="<s:property value="#urlTag"/>">Usuarios</a></li>
						</ul></li>
				</sec:authorize>
			</ul>
			<%-- <ul class="nav navbar-nav navbar-right">    
            	<li><img src="<s:url value="/images/logo_mini.jpg"/>" class="img-rounded" alt="Logo Bahia de Peran" /> </li>
            </ul> --%>
			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="isAnonymous()">
					<li><s:url action="login" var="urlTag" /> <a
						href="<s:property value="#urlTag"/>"><span
							class="glyphicon glyphicon-user"></span> Entrar</a></li>
				</sec:authorize>
				<sec:authorize access="isFullyAuthenticated()">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><span class="glyphicon glyphicon-user"></span>
							<sec:authentication property="principal.username" /> <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="j_spring_security_logout">Salir</a></li>
						</ul>
				</sec:authorize>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	<!--/.container-fluid -->
</nav>