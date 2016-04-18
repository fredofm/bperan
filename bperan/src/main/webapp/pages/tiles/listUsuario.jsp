<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
 
<html>
<head>
</head>
<body>
<h1>Struts + Spring + Hibernate example</h1>

<h2>List All Customers</h2>

<table border="1">
<tr><td>Customer Name</td><td>Address</td></tr>

<logic:iterate id="usuario" name="listaUsuarios" scope="request">
<tr>	
<td><bean:write name="usuario" property="nombre"/></td>
<td><bean:write name="usuario" property="fechacreacion"/></td>
</tr>
</logic:iterate> 

</table>

<br/>
<br/>
<html:link action="/AddUsuarioPage.do">Add Usuario</html:link>
 
</body>
</html>