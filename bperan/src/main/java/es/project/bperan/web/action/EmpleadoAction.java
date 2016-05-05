package es.project.bperan.web.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import es.project.bperan.bo.GenericBO;
import es.project.bperan.pojo.Obras;
import es.project.bperan.pojo.Empleado;

/**
 * @author Carol
 *
 */
public class EmpleadoAction extends ActionSupport implements ModelDriven<Empleado>, ServletRequestAware  {
	
		private Empleado empleado; 		
		private GenericBO<Empleado> empleadoBo;
		private GenericBO<Obras> obrasBo;
		
		private HttpServletRequest request;
		
		public void setServletRequest(HttpServletRequest request) {
			this.request = request;			
		}
		
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
		
		public Empleado getEmpleado() {
			return empleado;
		}

		@Override
		public Empleado getModel() {
			return empleado;
		}		
		
		public String delete() throws Exception {						
			empleadoBo.delete(empleado);
			
			return ActionSupport.SUCCESS;
		}

		/*prepare carga la lista de obras y carga el idempleado de la request*/
		public String prepare() throws Exception {
			
			request.setAttribute("listaObras", obrasBo.findAll());						
			
			try {
				Integer idempleado = Integer.parseInt(request.getParameter("idempleado"));
			
				empleado = empleadoBo.findById(idempleado);
			} catch (Throwable e) {
				// TODO traza error
			}						
			
			return ActionSupport.SUCCESS;
		}
		
		public String create() throws Exception{				
			empleadoBo.add(empleado);
			
			return ActionSupport.SUCCESS;
		}
				
		public String list() throws Exception{
			Collection<Empleado> listaEmpleados = empleadoBo.findAll();
			
			request.setAttribute("listaEmpleados", listaEmpleados);
			
			return ActionSupport.SUCCESS;		
		}
}
