<%@ taglib prefix="s" uri="/struts-tags" %>
 
<s:form action="/AddUsuario.do" >

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">Nombre</span>
  <input type="text" class="form-control" placeholder="Nombre" aria-describedby="basic-addon1" name="nombre"/>
</div>

<button type="submit" class="btn btn-default">Submit</button>
 
</s:form>