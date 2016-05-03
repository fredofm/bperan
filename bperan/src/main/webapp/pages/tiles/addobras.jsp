<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_obras" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de obras">
                <s:textfield
                        label="Nombre Obra"
                        name="nombreobra"
                        tooltip="Introduzca el nombre de la obra" placeholder="Nombre Obra"/>
                        
                <s:textfield
                        label="Ubicacion"
                        name="ubicacion"
                        tooltip="Introduzca la ubicación de la obra" placeholder="Ubicacion"/>
                      
                 <s:textfield
                        label="Descripcion"
                        name="descripcion"
                        tooltip="Introduzca una descripción de la obra" placeholder="Descripcion"/>
                       
                  <s:textfield
                        label="Coste Total"
                        name="costeTotal"
                        tooltip="Introduzca el coste toal de la obra" placeholder="Coste Total"/>
                       
                  <s:textfield
                        label="Fecha Inicio"
                        name="fechaInicio"
                        tooltip="Introduzca la fecha de inicio de la obra" placeholder="Fecha Inicio"/>
                        
                  <s:textfield
                        label="Fecha Fin"
                        name="fechaFin"
                        tooltip="Introduzca la fecha de fin de la obra" placeholder="Fecha Fin"/>
                        
                   <s:textfield
                        label="Estado"
                        name="estado"
                        tooltip="Introduzca el estado de la obra" placeholder="Estado"/>

	<button type="submit" class="btn btn-primary">Añadir</button>
</s:form>