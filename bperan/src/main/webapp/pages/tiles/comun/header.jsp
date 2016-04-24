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
            <a class="navbar-brand" href="#">Bahía Perán</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="#">Inicio</a></li>
              <li><a href="#">Clientes</a></li>
              <li><a href="#">Empleados</a></li>
              <li><a href="#">Obras</a></li>   
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