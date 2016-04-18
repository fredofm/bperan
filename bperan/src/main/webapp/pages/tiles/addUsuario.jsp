<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
 
<html>
<head>
</head>
<body>
<h1>Struts + Spring + Hibernate example</h1>

<h2>Add Usuario</h2>
<div style="color:red">
	<html:errors/>
</div>

<html:form action="/AddUsuario.do">

<div style="padding:16px">
	<div style="float:left;width:100px;">
		nombre: 
	</div> 
 
	<html:text property="nombre" size="40" maxlength="20"/>
</div>

<div style="padding:16px">
	<div style="float:left;padding-right:8px;">
		<html:submit>
             ok
        </html:submit>
	</div>	
</div>
 
</html:form>
 
</body>
</html>