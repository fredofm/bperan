<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_cliente" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de clientes">
                <s:textfield
                        label="Nombre Cliente"
                        name="nombreempresa"
                        tooltip="Introduzca el nombre del cliente" placeholder="Nombre Cliente"/>
                        
                <s:textfield
                        label="CIF/NIF"
                        name="cifNif"
                        tooltip="Introduzca el CIF/NIF del cliente" placeholder="CIF/NIF"/>
                      
                 <s:textfield
                        label="Teléfono"
                        name="telefono"
                        tooltip="Introduzca el teléfono del cliente" placeholder="Teléfono"/>
                       
                  <s:textfield
                        label="FAX"
                        name="fax"
                        tooltip="Introduzca el FAX del cliente" placeholder="FAX"/>
                       
                  <s:textfield
                        label="Dirección"
                        name="direccion"
                        tooltip="Introduzca la dirección del cliente" placeholder="Dirección"/>
                        
                  <s:textfield
                        label="Población"
                        name="poblacion"
                        tooltip="Introduzca la población del cliente" placeholder="Población"/>
                        
                   <s:textfield
                        label="Provincia"
                        name="provincia"
                        tooltip="Introduzca la provincia del cliente" placeholder="Provincia"/>
                    
                    <s:textfield
                        label="Código Postal"
                        name="codigopostal"
                        tooltip="Introduzca el código postal del cliente" placeholder="Código Postal"/>
                       
                    <s:textfield
                        label="Email"
                        name="emial"
                        tooltip="Introduzca el email del cliente" placeholder="Email"/>
                        
                    <s:textfield
                        label="Estado"
                        name="estado"
                        tooltip="Introduzca el estado del cliente" placeholder="Estado"/>
                        
                     <s:textfield
                        label="Usuario"
                        name="usuario.idusuario"
                        tooltip="Introduzca el usuario del cliente" placeholder="Usuario"/>
                        
	<button type="submit" class="btn btn-primary">Añadir</button>
</s:form>