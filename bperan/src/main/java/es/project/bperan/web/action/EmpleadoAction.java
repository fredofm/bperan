package es.project.bperan.web.action;

import java.util.Collection;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Empleado;
import es.project.bperan.pojo.Obras;

/**
 * @author Carol
 *
 */
public class EmpleadoAction extends BperanAction implements ModelDriven<Empleado> {
	
		private Empleado empleado; 		
		private GenericBO<Empleado> empleadoBo;
		private GenericBO<Obras> obrasBo;
			
		public void setEmpleadoBo(GenericBO<Empleado> empleadoBo) {
			this.empleadoBo = empleadoBo;
		}
		
		public GenericBO<Obras> getObrasBo() {
			return obrasBo;
		}

		public void setObrasBo(GenericBO<Obras> obrasBo) {
			this.obrasBo = obrasBo;
		}

		public void setEmpleado(Empleado empleado) {
			this.empleado = empleado;
		}
		
		@Override
		public Empleado getModel() {
			try {
				if (getId() != null) {
					empleado = empleadoBo.findById(getId());
				}
			} catch (Throwable e) {
				// TODO traza error
			}
			
			return empleado;
		}			
		
		public String delete() throws Exception {						
			empleadoBo.delete(empleado);
			
			return ActionSupport.SUCCESS;
		}

		/*prepare carga la lista de obras*/
		public String prepare() throws Exception {
			getServletRequest().setAttribute("listaObras", obrasBo.findAll());	
																		
  			return ActionSupport.SUCCESS;
  		}
			
		
		public String create() throws Exception{
			if (empleado != null && (empleado.getObras() == null || empleado.getObras().getIdobra() == null )) {
				empleado.setObras(null);
			}
			
			empleadoBo.add(empleado);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Empleado> listaEmpleados = empleadoBo.findAll();
			
			getServletRequest().setAttribute("listaEmpleados", listaEmpleados);
			
			return ActionSupport.SUCCESS;		
		}
}
