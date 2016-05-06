<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<s:actionerror theme="bootstrap" />
<s:actionmessage theme="bootstrap" />
<s:fielderror theme="bootstrap" />

<s:form action="add_obras" theme="bootstrap" cssClass="well form-horizontal" label="Formulario de creación de obras">
                <s:hidden name="idobra" />
                <s:textfield
                        label="Nombre Obra"
                        name="nombreobra"
                        tooltip="Introduzca el nombre de la obra" placeholder="Nombre Obra"/>
                        
                <s:textfield
                        label="Ubicación"
                        name="ubicacion"
                        tooltip="Introduzca la ubicación de la obra" placeholder="Ubicación"/>
                      
                 <s:textfield
                        label="Descripción"
                        name="descripcion"
                        tooltip="Introduzca una descripción de la obra" placeholder="Descripción"/>
                       
                  <s:textfield
                        label="Coste Total"
                        name="costeTotal"
                        tooltip="Introduzca el coste total de la obra" placeholder="Coste Total"/>
                       
                  <s:textfield
                        label="Fecha Inicio"
                        name="fechaInicio"
                        tooltip="Introduzca la fecha de inicio de la obra con formato dd/mm/aaaa" placeholder="Fecha Inicio con formato dd/mm/aaaa"/>
                        
                  <s:textfield
                        label="Fecha Fin"
                        name="fechaFin"
                        tooltip="Introduzca la fecha de fin de la obra con formato dd/mm/aaaa" placeholder="Fecha Fin con formato dd/mm/aaaa"/>
                        
                   <s:textfield
                        label="Estado"
                        name="estado"
                        tooltip="Introduzca el estado de la obra" placeholder="Estado"/>

	<button type="submit" class="btn btn-primary">Guardar</button>
</s:form>