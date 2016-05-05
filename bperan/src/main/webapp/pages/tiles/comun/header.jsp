<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <s:url action="welcome" var="urlTag"/>
            <a class="navbar-brand" href="<s:property value="#urlTag"/>">Bahía de Perán</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="#">Inicio</a></li>
              <li>
                   <s:url action="list_cliente" var="urlTag"/>
                  	<a href="<s:property value="#urlTag"/>" >Clientes</a>
              </li> 
              
               <li>
                   <s:url action="list_empleado" var="urlTag"/>
                  	<a href="<s:property value="#urlTag"/>" >Empleados</a>
              </li> 

              <li>
                   <s:url action="list_obras" var="urlTag"/>
                  	<a href="<s:property value="#urlTag"/>" >Obras</a>
              </li>   
              
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  	<li>
                  		<s:url action="list_usuario" var="urlTag"/>
                  		<a href="<s:property value="#urlTag"/>" >Usuarios</a>
                  	</li>                                    
                </ul>
              </li>                         
            </ul>
            <ul class="nav navbar-nav navbar-right">              
              <li><a href="#">Entrar</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>